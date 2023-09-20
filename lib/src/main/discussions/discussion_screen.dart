import 'dart:io';

import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/gap.dart';
import 'package:messenger_app/src/main/discussions/message_model.dart';
import 'package:messenger_app/src/widgets/error_widget.dart';
import 'package:messenger_app/src/widgets/loading_widget.dart';

import 'discussion_service.dart';

@RoutePage()
class DiscussionScreen extends HookWidget {
  const DiscussionScreen({
    super.key,
    @pathParam required this.peerId,
  });

  /// Not passing the user object because of deep link
  final String peerId;

  @override
  Widget build(BuildContext context) {
    final limit = useState(20);

    // Group
    final group = DiscussionGroup.fromFirebase(peerId);
    final service = DiscussionService(group);

    // Message
    final controller = useTextEditingController();
    final focusNode = useFocusNode();
    final image = useState<File?>(null);

    final scroll = useScrollController();
    scroll.addListener(() {
      if (!scroll.hasClients) return;
      if (scroll.offset >= scroll.position.maxScrollExtent &&
          !scroll.position.outOfRange) {
        limit.value += 20;
      }
    });

    return Scaffold(
      body: FutureBuilder(
        future: service.getPeerById(peerId),
        builder: (context, snapshot) => snapshot.when(
          data: (data) {
            final user = snapshot.data!;
            return Scaffold(
              appBar: AppBar(title: Text(user.name)),
              body: Column(
                children: [
                  Expanded(
                    child: StreamBuilder(
                      stream: service.getMessages(limit: limit.value),
                      builder: (context, snapshot) => snapshot.when(
                        data: (data) {
                          final messages = snapshot.data ?? [];
                          return _MessagesListView(
                            messages: messages,
                            group: group,
                          );
                        },
                        error: DefaultErrorWidget.call(() {
                          context.router.pop();
                        }),
                        loading: DefaultLoadingWidget.new,
                      ),
                    ),
                  ),
                  _DiscussionInputSection(
                    image: image,
                    controller: controller,
                    focusNode: focusNode,
                    actions: [
                      if (kDebugMode)
                        IconButton(
                          icon: const Icon(Icons.bug_report_outlined),
                          onPressed: () {
                            controller.text = faker.person.name();
                          },
                        ),
                      IconButton(
                        icon: const Icon(Icons.photo_outlined),
                        onPressed: () {
                          _imagePickerBottomSheet(
                            context: context,
                            image: image,
                          );
                        },
                      ),
                    ],
                    onTextSend: () {
                      service.sendTextMessage(controller.text);
                      controller.clear();
                      focusNode.requestFocus();
                    },
                    onImageSend: () {
                      service.sendImageMessage(image.value!);
                      image.value = null;
                    },
                  ),
                ],
              ),
            );
          },
          error: DefaultErrorWidget.call(() {
            context.router.pop();
          }),
          loading: DefaultLoadingWidget.new,
        ),
      ),
    );
  }

  _imagePickerBottomSheet({
    required BuildContext context,
    required ValueNotifier<File?> image,
  }) {
    final l10n = AppLocalizations.of(context)!;

    Future<void> getImage(ImageSource source) async {
      final value = await ImagePicker().pickImage(source: source);
      image.value = value == null ? null : File(value.path);
      if (context.mounted) {
        context.router.pop();
      }
    }

    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt_outlined),
              title: Text(l10n.camera),
              onTap: () {
                getImage(ImageSource.camera);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_outlined),
              title: Text(l10n.photo),
              onTap: () {
                getImage(ImageSource.gallery);
              },
            ),
          ],
        );
      },
    );
  }
}

class _MessagesListView extends StatelessWidget {
  const _MessagesListView({
    required this.messages,
    required this.group,
  });

  final List<Message> messages;

  final DiscussionGroup group;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16.0),
      itemCount: messages.length,
      reverse: true,
      separatorBuilder: (_, __) => const Gap(size: 8),
      itemBuilder: (context, index) {
        final message = messages[index];
        final pervious = index > 0 ? messages[index - 1] : null;
        final next = index < messages.length - 1 ? messages[index + 1] : null;

        return _MessageListTile(
          pervious: pervious,
          current: message,
          next: next,
          group: group,
          onTap: () {
            final colorScheme = Theme.of(context).colorScheme;
            if (message.idFrom != group.userId) return;
            showModalBottomSheet(
              context: context,
              showDragHandle: true,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.copy_outlined,
                        color: colorScheme.onSurfaceVariant,
                      ),
                      title: Text(
                        AppLocalizations.of(context)!.copyMessage,
                      ),
                      onTap: () {
                        Clipboard.setData(
                          ClipboardData(
                            text: message.content,
                          ),
                        );
                        context.router.pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
        );
      },
    );
  }
}

class _MessageListTile extends StatelessWidget {
  const _MessageListTile({
    super.key,
    required this.pervious,
    required this.current,
    required this.next,
    required this.group,
    required this.onTap,
  });

  final Message? pervious;
  final Message current;
  final Message? next;
  final DiscussionGroup group;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.circular(25.0);
    const sharpRadius = Radius.circular(8.0);

    final isMine = current.idFrom == group.userId;
    final isNextMine = current.idFrom == next?.idFrom;
    final isPreviousMine = current.idFrom == pervious?.idFrom;

    if (!isPreviousMine && isNextMine) {
      borderRadius = borderRadius.copyWith(topRight: sharpRadius);
    } else if (isPreviousMine && !isNextMine) {
      borderRadius = borderRadius.copyWith(bottomRight: sharpRadius);
    } else if (isPreviousMine && isNextMine) {
      borderRadius = borderRadius.copyWith(
        topRight: sharpRadius,
        bottomRight: sharpRadius,
      );
    }

    final colorScheme = Theme.of(context).colorScheme;
    final backgroundColor =
        isMine ? colorScheme.primaryContainer : colorScheme.secondaryContainer;
    final foregroundColor = isMine
        ? colorScheme.onPrimaryContainer
        : colorScheme.onSecondaryContainer;

    // on tap show menu (copy, delete, forward)
    return Align(
      alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        child: Ink(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
          ),
          child: Text(
            current.content,
            style: TextStyle(color: foregroundColor),
          ),
        ),
      ),
    );
  }
}

class _DiscussionInputSection extends StatelessWidget {
  const _DiscussionInputSection({
    required this.image,
    required this.controller,
    required this.focusNode,
    required this.actions,
    required this.onTextSend,
    required this.onImageSend,
  });

  final ValueNotifier<File?> image;
  final TextEditingController controller;
  final FocusNode focusNode;
  final List<IconButton> actions;
  final VoidCallback onTextSend;
  final VoidCallback onImageSend;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;

    final backgroundColor = colorScheme.surfaceVariant;
    final foregroundColor = colorScheme.onSurfaceVariant;

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(color: backgroundColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ValueListenableBuilder(
            valueListenable: image,
            builder: (context, value, child) {
              final borderRadius = BorderRadius.circular(8.0);
              if (value == null) return const SizedBox.shrink();
              return Row(
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: borderRadius,
                      border: Border.all(color: colorScheme.outline),
                    ),
                    child: ClipRRect(
                      borderRadius: borderRadius,
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.file(
                          value,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Gap(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FilledButton.icon(
                        onPressed: onImageSend,
                        icon: const Icon(Icons.send_outlined),
                        label: Text(l10n.send),
                      ),
                      FilledButton.icon(
                        onPressed: () {
                          image.value = null;
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: colorScheme.error,
                          foregroundColor: colorScheme.onError,
                        ),
                        icon: const Icon(Icons.remove_outlined),
                        label: Text(l10n.removeImage),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
          ValueListenableBuilder(
            valueListenable: controller,
            builder: (context, value, child) {
              final text = value.text;
              return TextFormField(
                controller: controller,
                focusNode: focusNode,
                maxLength: 1000,
                maxLines: 4,
                minLines: 1,
                style: TextStyle(color: foregroundColor),
                decoration: InputDecoration(
                  hintText: l10n.messageHintText,
                  border: InputBorder.none,
                  suffixIcon: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: text.isEmpty
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: actions,
                          )
                        : IconButton(
                            icon: Icon(
                              Icons.send_outlined,
                              color: foregroundColor,
                            ),
                            onPressed: onTextSend,
                          ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

extension<T> on AsyncSnapshot<T> {
  R when<R>({
    required R Function(T? data) data,
    required R Function(Object? error, StackTrace stackTrace) error,
    required R Function() loading,
  }) {
    if (hasError) {
      return error(this.error, stackTrace!);
    } else if (hasData) {
      return data(this.data);
    } else {
      return loading();
    }
  }
}
