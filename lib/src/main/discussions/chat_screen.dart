// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:messenger_app/collections.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/models/user.dart';
import 'package:messenger_app/src/main/discussions/message_model.dart';

class ChatGroup {
  final String userId;
  final String peerId;

  const ChatGroup({
    required this.userId,
    required this.peerId,
  });

  String groupChatId() {
    if (userId.compareTo(peerId) > 0) {
      return '$userId-$peerId';
    } else {
      return '$peerId-$userId';
    }
  }
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
    final l10n = AppLocalizations.of(context)!;

    // Group
    final user = FirebaseAuth.instance.currentUser!;
    final group = ChatGroup(userId: user.uid, peerId: peerId);
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
                  child: ListView.builder(
                    itemCount: 10,
                    reverse: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("Message ${index + 1}"),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: ValueListenableBuilder(
                    valueListenable: controller,
                    builder: (context, value, child) {
                      final text = value.text;
                      return TextFormField(
                        controller: controller,
                        focusNode: focusNode,
                        maxLines: 4,
                        decoration: InputDecoration(
                          hintText: l10n.messageHintText,
                          suffixIcon: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 300),
                            child: text.isEmpty
                                ? IconButton(
                                    icon: const Icon(Icons.photo_outlined),
                                    onPressed: () {},
                                  )
                                : IconButton(
                                    icon: const Icon(Icons.send_outlined),
                                    onPressed: () {
                                      sendMessage(
                                        groupChatId: group.groupChatId(),
                                        userId: group.userId,
                                        peerId: group.peerId,
                                        text: text,
                                      );
                                      controller.clear();
                                      focusNode.requestFocus();
                                    },
                                  ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }

  void sendMessage({
    required String groupChatId,
    required String userId,
    required String peerId,
    required String text,
  }) {
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection(FirebaseCollections.discussions)
        .doc(groupChatId)
        .collection(groupChatId)
        .doc(DateTime.now().millisecondsSinceEpoch.toString());

    final chat = Message.text(
      idFrom: userId,
      idTo: peerId,
      timestamp: DateTime.now(),
      content: text,
    );

    FirebaseFirestore.instance.runTransaction((transaction) async {
      transaction.set(
        documentReference,
        chat.toJson(),
      );
    });
  }
}
