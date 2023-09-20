import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/date_time.dart';
import 'package:messenger_app/gap.dart';
import 'package:messenger_app/models/user.dart';
import 'package:messenger_app/src/main/discussions/async_snapshot.dart';
import 'package:messenger_app/src/main/discussions/message_model.dart';
import 'package:messenger_app/src/widgets/error_widget.dart';
import 'package:messenger_app/src/widgets/loading_widget.dart';

import 'chat_service.dart';

part 'discussion_screen.freezed.dart';

enum MessageDirection {
  start,
  end;

  Alignment get alignment => switch (this) {
        MessageDirection.start => Alignment.centerLeft,
        MessageDirection.end => Alignment.centerRight
      };
}

@freezed
class MessageThemeData with _$MessageThemeData {
  const factory MessageThemeData({
    required MessageDirection direction,
    required BorderRadius borderRadius,
    required TextStyle textStyle,
    required Color cardColor,
    required TextStyle imageDateTextStyle,
    required TextStyle textDateTextStyle,
  }) = _MessageThemeData;
}

class MessageTheme extends InheritedWidget {
  const MessageTheme({
    super.key,
    required this.data,
    required super.child,
  });

  final MessageThemeData data;

  @override
  bool updateShouldNotify(MessageTheme oldWidget) => oldWidget.data != data;

  static MessageTheme of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MessageTheme>()!;
  }
}

class MessageState {
  const MessageState({
    required this.group,
    required this.pervious,
    required this.current,
    required this.next,
  });

  final DiscussionGroup group;
  final Message? pervious;
  final Message current;
  final Message? next;

  bool get isMine => current.idFrom == group.userId;
}

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
    final service = DiscussionService(DiscussionGroup.fromPeerId(peerId));

    return Scaffold(
      body: FutureBuilder(
        future: service.getPeerById(peerId),
        builder: (context, snapshot) => snapshot.when(
          data: (data) => _DiscussionView(data!),
          error: DefaultErrorWidget.call(context.router.pop),
          loading: DefaultLoadingWidget.new,
        ),
      ),
    );
  }
}

class _DiscussionView extends StatefulHookWidget {
  const _DiscussionView(this.peer);

  final UserData peer;

  @override
  State<_DiscussionView> createState() => _DiscussionViewState();
}

class _DiscussionViewState extends State<_DiscussionView> {
  @override
  Widget build(BuildContext context) {
    final limit = useState(20);

    final group = DiscussionGroup.fromPeerId(widget.peer.uid);
    final service = DiscussionService(group);

    // Message
    final controller = useTextEditingController();
    final focusNode = useFocusNode();
    final image = useState<File?>(null);

    final scrollController = useScrollController();
    scrollController.addListener(() {
      if (!scrollController.hasClients) return;
      if (scrollController.offset >=
              scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange) {
        limit.value += 20;
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text(widget.peer.name)),
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
                    controller: scrollController,
                    group: group,
                  );
                },
                error: DefaultErrorWidget.call(context.router.pop),
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
    required this.controller,
    required this.group,
  });

  final List<Message> messages;
  final ScrollController controller;
  final DiscussionGroup group;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      reverse: true,
      itemCount: messages.length,
      controller: controller,
      padding: const EdgeInsets.all(16.0),
      separatorBuilder: (_, __) => const Gap(size: 8),
      itemBuilder: (context, index) {
        final data = MessageState(
          group: group,
          pervious: index > 0 ? messages[index - 1] : null,
          current: messages[index],
          next: index < messages.length - 1 ? messages[index + 1] : null,
        );

        return MessageThemeWrapper(
          data: data,
          child: _MessageListTile(
            data: data,
            onTap: () {
              if (data.current.idFrom != group.userId) return;
              showModalBottomSheet(
                context: context,
                showDragHandle: true,
                builder: (context) {
                  return const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(),
                    ],
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}

class _MessageListTile extends StatelessWidget {
  const _MessageListTile({
    required this.data,
    required this.onTap,
  });

  final MessageState data;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = MessageTheme.of(context).data;

    return Align(
      alignment: data.isMine ? Alignment.centerRight : Alignment.centerLeft,
      child: InkWell(
        borderRadius: theme.borderRadius,
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: theme.borderRadius,
          ),
          child: data.current.map(
            text: _TextMessageListTile.new,
            image: _ImageMessageListTile.new,
          ),
        ),
      ),
    );
  }
}

class MessageThemeWrapper extends StatelessWidget {
  const MessageThemeWrapper({
    super.key,
    required this.data,
    required this.child,
  });

  final MessageState data;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    const sharpRadius = Radius.circular(4.0);
    var borderRadius = BorderRadius.circular(25.0);

    final isNextMine = data.current.idFrom == data.next?.idFrom;
    final isPreviousMine = data.current.idFrom == data.pervious?.idFrom;

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

    final textStyle = textTheme.titleLarge!;

    final themeData = MessageThemeData(
      direction: data.isMine ? MessageDirection.end : MessageDirection.start,
      borderRadius: borderRadius,
      textStyle: textStyle.copyWith(color: colorScheme.onPrimaryContainer),
      cardColor: colorScheme.primaryContainer,
      imageDateTextStyle: textTheme.labelSmall!.copyWith(
        color: Colors.white,
      ),
      textDateTextStyle: textTheme.labelSmall!.copyWith(
        color: colorScheme.onPrimaryContainer,
      ),
    );

    return MessageTheme(
      data: themeData,
      child: child,
    );
  }
}

class _ImageMessageListTile extends StatelessWidget {
  const _ImageMessageListTile(this.value);

  final MessageImage value;

  @override
  Widget build(BuildContext context) {
    final messageTheme = MessageTheme.of(context).data;

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: messageTheme.borderRadius,
              child: CachedNetworkImage(
                imageUrl: value.imageUrl!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: Container(
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Text(
                value.timestamp.format(),
                style: messageTheme.imageDateTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TextMessageListTile extends StatelessWidget {
  const _TextMessageListTile(this.message);

  final MessageText message;

  @override
  Widget build(BuildContext context) {
    final messageTheme = MessageTheme.of(context).data;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(message.content),
          Text(
            message.timestamp.format(),
            style: messageTheme.textDateTextStyle,
          ),
        ],
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
