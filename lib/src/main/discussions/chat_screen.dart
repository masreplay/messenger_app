// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_app/collections.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/gap.dart';
import 'package:messenger_app/logger.dart';
import 'package:messenger_app/models/user.dart';
import 'package:messenger_app/src/main/discussions/message_model.dart';

part 'chat_screen.freezed.dart';
part 'chat_screen.g.dart';

@freezed
class ChatGroup with _$ChatGroup {
  const ChatGroup._();

  const factory ChatGroup({
    required String userId,
    required String peerId,
  }) = _ChatGroup;

  String get id {
    if (userId.compareTo(peerId) > 0) {
      return '$userId-$peerId';
    } else {
      return '$peerId-$userId';
    }
  }

  factory ChatGroup.fromJson(Map<String, dynamic> json) =>
      _$ChatGroupFromJson(json);
}

@RoutePage()
class ChatScreen extends HookWidget {
  const ChatScreen({
    super.key,
    @pathParam required this.peerId,
  });

  final String peerId;

  @override
  Widget build(BuildContext context) {
    // Group
    final user = FirebaseAuth.instance.currentUser!;
    final group = ChatGroup(userId: user.uid, peerId: peerId);
    debugPrintMap(group.toJson());
    final limit = useState(20);

    // Message
    final controller = useTextEditingController();
    final focusNode = useFocusNode();
    // final image = useState<File?>(null);

    final scroll = useScrollController();
    scroll.addListener(() {
      if (!scroll.hasClients) return;
      if (scroll.offset >= scroll.position.maxScrollExtent &&
          !scroll.position.outOfRange) {
        limit.value += 20;
      }
    });

    final colorScheme = Theme.of(context).colorScheme;

    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection(FirebaseCollections.users)
          .doc(peerId)
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          final chat =
              UserData.fromJson(snapshot.data?.data() as Map<String, dynamic>);
          return Scaffold(
            appBar: AppBar(
              title: Text(chat.name ?? ""),
            ),
            body: Column(
              children: [
                Expanded(
                  child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection(FirebaseCollections.discussions)
                        .doc(group.id)
                        .collection(group.id)
                        .orderBy('timestamp', descending: true)
                        .limit(limit.value)
                        .snapshots()
                        .map((event) => event.docs
                            .map((e) => Message.fromJson(e.data()))
                            .toList()),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      final messages = snapshot.data ?? [];
                      return ListView.separated(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 16.0,
                        ),
                        itemCount: messages.length,
                        reverse: true,
                        itemBuilder: (context, index) {
                          final message = messages[index];

                          MessageListTile(
                            pervious: null,
                            current: message,
                            next: null,
                            group: group,
                          );
                        },
                        separatorBuilder: (_, __) => const Gap(size: 8),
                      );
                    },
                  ),
                ),
                _ChatInputSection(
                  controller: controller,
                  focusNode: focusNode,
                  onSend: () {
                    _sendMessage(group, text: controller.text);
                    controller.clear();
                    focusNode.requestFocus();
                  },
                ),
              ],
            ),
          );
        }
      },
    );
  }

  DocumentReference<Map<String, dynamic>> _getChat(ChatGroup group) =>
      FirebaseFirestore.instance
          .collection(FirebaseCollections.discussions)
          .doc(group.id)
          .collection(group.id)
          .doc(DateTime.now().millisecondsSinceEpoch.toString());

  Future<Transaction> runTxn({
    required ChatGroup group,
    required Message chat,
  }) {
    return FirebaseFirestore.instance.runTransaction((transaction) async {
      return transaction.set(_getChat(group), chat.toJson());
    });
  }

  Future<Transaction> _sendMessage(ChatGroup group, {required String text}) {
    final chat = Message.text(
      idFrom: group.userId,
      idTo: group.peerId,
      timestamp: DateTime.now(),
      content: text,
    );
    return runTxn(group: group, chat: chat);
  }
}

class MessageListTile extends StatelessWidget {
  const MessageListTile({
    super.key,
    required this.pervious,
    required this.current,
    required this.next,
    required this.group,
  });

  final Message? pervious;
  final Message current;
  final Message? next;
  final ChatGroup group;

  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.circular(50.0);

    // (if previous is not mine or it's null) and next is mine
    // -----
    // (----
    //
    // the previous is mine and next is mine too
    // (----
    // (----
    //
    // the previous is mine and next is not mine
    // (----
    // -----

    final previousId = pervious?.idFrom;
    final currentId = current.idFrom;
    final nextId = next?.idFrom;

    final isMine = currentId == group.userId;

    int messagesLength = 10;
    if (messagesLength == 1) {
      borderRadius = borderRadius;
    } else if (currentId != previousId && currentId == nextId) {
      borderRadius = borderRadius.copyWith(topLeft: Radius.zero);
    } else {
      borderRadius = borderRadius;
    }

    final colorScheme = Theme.of(context).colorScheme;
    final backgroundColor =
        isMine ? colorScheme.primaryContainer : colorScheme.secondaryContainer;

    return Align(
      alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius,
        ),
        child: Text(current.content),
      ),
    );
  }
}

class _ChatInputSection extends StatelessWidget {
  const _ChatInputSection({
    required this.controller,
    required this.focusNode,
    required this.onSend,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final VoidCallback onSend;
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;

    final backgroundColor = colorScheme.surfaceVariant;
    final foregroundColor = colorScheme.onSurfaceVariant;

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: ValueListenableBuilder(
        valueListenable: controller,
        builder: (context, value, child) {
          final text = value.text;
          return TextFormField(
            controller: controller,
            focusNode: focusNode,
            maxLines: 4,
            minLines: 1,
            style: TextStyle(color: foregroundColor),
            decoration: InputDecoration(
              hintText: l10n.messageHintText,
              suffixIcon: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: text.isEmpty
                    ? IconButton(
                        icon: Icon(
                          Icons.photo_outlined,
                          color: foregroundColor,
                        ),
                        onPressed: () {},
                      )
                    : IconButton(
                        icon: Icon(
                          Icons.send_outlined,
                          color: foregroundColor,
                        ),
                        onPressed: onSend,
                      ),
              ),
            ),
          );
        },
      ),
    );
  }
}
