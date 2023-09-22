import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:messenger_app/collections.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/date_time.dart';
import 'package:messenger_app/firebase.dart';
import 'package:messenger_app/gap.dart';
import 'package:messenger_app/models/user.dart';
import 'package:messenger_app/src/main/discussions/async_snapshot.dart';
import 'package:messenger_app/src/main/discussions/image.dart';
import 'package:messenger_app/src/main/discussions/message_model.dart';
import 'package:messenger_app/src/main/discussions/scroll_to_bottom.dart';
import 'package:messenger_app/src/main/discussions/sticker.dart';
import 'package:messenger_app/src/widgets/error_widget.dart';
import 'package:messenger_app/src/widgets/loading_widget.dart';

import 'chat_service.dart';

part 'discussion_screen.freezed.dart';

/// one-to-one discussion or group discussion message direction
///
/// never use start or end here because it's not RTL friendly
/// same as Telegram and WhatsApp etc.
enum MessageDirection {
  right,
  left;

  Alignment get alignment => switch (this) {
        MessageDirection.right => Alignment.centerRight,
        MessageDirection.left => Alignment.centerLeft,
      };
}

/// Message theme data for [MessageTheme]
@freezed
class MessageThemeData with _$MessageThemeData {
  const factory MessageThemeData({
    required MessageDirection direction,
    required BorderRadius borderRadius,
    required TextStyle textStyle,
    required Color cardColor,
    required TextStyle imageDateTextStyle,
    required TextStyle dateTextStyle,
  }) = _MessageThemeData;
}

/// Message theme it should be used with [MessageTheme.of]
///
/// and configured depend on the direction of the message
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

/// It's better to use this [Record] instead of [Class]
///
/// but this is just a show case :)
///
/// example:
/// typedef MessageState = ({
///   DiscussionGroup group,
///   Message? pervious,
///   Message current,
///   Message? next,
/// });
///
/// Same as getter in class here we use extension instead in [Record]
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

  /// Check if the [current] message is mine
  bool get isMine => current.metadata.idFrom == group.userId;

  /// Check if the [next] message is same as current user
  bool get isNextMine => current.metadata.idFrom == next?.metadata.idFrom;

  /// Check if the [pervious] message is same as current user
  bool get isPerviousMine =>
      current.metadata.idFrom == pervious?.metadata.idFrom;

  /// Get the direction of message
  MessageDirection get direction =>
      isMine ? MessageDirection.right : MessageDirection.left;
}

/// This is the screen that shows the discussion between two users.
///
/// This screen is not used in the app, but it's used in the deep link.
/// /discussion/{peerId}
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
      appBar: AppBar(
        title: Text(widget.peer.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {
              context.showUnimplementedSnackBar();
            },
          ),
        ],
      ),
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
          _StickersSection(onChanged: service.sendStickerMessage),
          _DiscussionInputSection(
            imageController: image,
            textController: controller,
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
              IconButton(
                icon: const Icon(Icons.mic_outlined),
                onPressed: () {
                  context.showUnimplementedSnackBar();
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

class _StickersSection extends StatelessWidget {
  const _StickersSection({
    required this.onChanged,
  });

  final ValueChanged<Sticker> onChanged;

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 100,
      color: Theme.of(context).colorScheme.tertiaryContainer,
      child: FutureBuilder(
        future: _getStickers(),
        builder: (context, snapshot) => snapshot.when(
          data: (data) => ListView.builder(
            itemCount: data!.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final sticker = data[index];
              return Tooltip(
                message: "${sticker.nickname} ${sticker.emoji}",
                child: InkWell(
                  onTap: () => onChanged(sticker),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: AppNetworkImage(sticker.path),
                  ),
                ),
              );
            },
          ),
          error: DefaultErrorWidget.call(context.router.pop),
          loading: DefaultLoadingWidget.new,
        ),
      ),
    );
  }

  Future<List<Sticker>> _getStickers() => FirebaseFirestore.instance
      .collection(FirebaseCollections.stickers)
      .get()
      .then(
          (value) => value.docs.map((e) => Sticker.fromJson(e.map())).toList());
}

/// A list of messages not depend on the type of the message
class _MessagesListView extends StatefulWidget {
  const _MessagesListView({
    required this.messages,
    required this.controller,
    required this.group,
  });

  final List<Message> messages;
  final ScrollController controller;
  final DiscussionGroup group;

  @override
  State<_MessagesListView> createState() => _MessagesListViewState();
}

class _MessagesListViewState extends State<_MessagesListView> {
  @override
  Widget build(BuildContext context) {
    return ScrollToBottom(
      scrollController: widget.controller,
      child: ListView.separated(
        reverse: true,
        itemCount: widget.messages.length,
        controller: widget.controller,
        padding: const EdgeInsets.all(16.0),
        separatorBuilder: (_, __) => const Gap(size: 8),
        itemBuilder: (context, index) {
          // Collecting the [MessageState] here
          final state = MessageState(
            group: widget.group,
            pervious: index > 0 ? widget.messages[index - 1] : null,
            current: widget.messages[index],
            next: index < widget.messages.length - 1
                ? widget.messages[index + 1]
                : null,
          );

          return MessageThemeWrapper(
            state: state,
            child: _MessageListTile(
              value: state,
              onLongPressed: _onLongPressed,
            ),
          );
        },
      ),
    );
  }

  void _onLongPressed(MessageState value) {
    final l10n = AppLocalizations.of(context)!;
    value.current.maybeMap(
      text: (value) {
        showModalBottomSheet(
          context: context,
          showDragHandle: true,
          builder: (context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.copy_outlined),
                  title: Text(l10n.copy),
                  onTap: () {
                    Clipboard.setData(
                      ClipboardData(text: value.content),
                    );
                    context.router.pop();
                  },
                ),
              ],
            );
          },
        );
      },
      image: (value) {
        context.router.push(
          ImageRoute(imageUrl: value.imageUrl),
        );
      },
      orElse: () {
        throw UnimplementedError();
      },
    );
  }
}

/// A [Message] can be one of these types [MessageText], [MessageImage], etc.
/// This is a [Freezed] union class.
class _MessageListTile extends StatelessWidget {
  const _MessageListTile({
    required this.value,
    required this.onLongPressed,
  });

  final MessageState value;
  final ValueChanged<MessageState> onLongPressed;

  @override
  Widget build(BuildContext context) {
    final theme = MessageTheme.of(context).data;

    return Align(
      alignment: theme.direction.alignment,
      child: InkWell(
        borderRadius: theme.borderRadius,
        onLongPress: () => onLongPressed(value),
        child: Ink(
          decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: theme.borderRadius,
          ),
          // it's better to use switch case here
          child: value.current.map(
            text: _TextMessageListTile.new,
            image: _ImageMessageListTile.new,
            sticker: _StickerMessageListTile.new,
            fallback: _FallbackMessageListTile.new,
          ),
        ),
      ),
    );
  }
}

class _FallbackMessageListTile extends StatelessWidget {
  const _FallbackMessageListTile(this.value);

  final MessageFallback value;

  @override
  Widget build(BuildContext context) {
    final messageTheme = MessageTheme.of(context).data;

    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            l10n.unsupportedMessage,
            style: messageTheme.textStyle,
          ),
        ],
      ),
    );
  }
}

class _StickerMessageListTile extends StatelessWidget {
  const _StickerMessageListTile(this.value);

  final MessageSticker value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox.square(
        dimension: 100,
        child: AspectRatio(
          aspectRatio: 1,
          child: AppNetworkImage(
            value.sticker.path,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

/// Building the theme of the [Message] for the [MessageTheme]
class MessageThemeWrapper extends StatelessWidget {
  const MessageThemeWrapper({
    super.key,
    required this.state,
    required this.child,
  });

  final MessageState state;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final direction =
        state.isMine ? MessageDirection.right : MessageDirection.left;

    final borderRadius = _buildBorderRadius();

    final textStyle = textTheme.titleMedium!;

    final backgroundColor = switch (direction) {
      MessageDirection.right => colorScheme.primaryContainer,
      MessageDirection.left => colorScheme.secondaryContainer,
    };
    final foregroundColor = switch (direction) {
      MessageDirection.right => colorScheme.onPrimaryContainer,
      MessageDirection.left => colorScheme.onSecondaryContainer,
    };

    final dateTextStyle = textTheme.labelSmall!;

    final themeData = MessageThemeData(
      direction: direction,
      borderRadius: borderRadius,
      textStyle: textStyle.copyWith(color: foregroundColor),
      cardColor: backgroundColor,
      imageDateTextStyle: dateTextStyle.copyWith(
        color: Colors.white,
      ),
      dateTextStyle: dateTextStyle.copyWith(
        color: foregroundColor,
      ),
    );

    return MessageTheme(
      data: themeData,
      child: child,
    );
  }

  _buildBorderRadius() {
    const sharpRadius = Radius.circular(0.0);
    final borderRadius = BorderRadius.circular(24.0);

    if (!state.isPerviousMine && state.isNextMine) {
      return switch (state.direction) {
        MessageDirection.right => borderRadius.copyWith(
            topRight: sharpRadius,
          ),
        MessageDirection.left => borderRadius.copyWith(
            topLeft: sharpRadius,
          ),
      };
    } else if (state.isPerviousMine && !state.isNextMine) {
      return switch (state.direction) {
        MessageDirection.right => borderRadius.copyWith(
            bottomRight: sharpRadius,
          ),
        MessageDirection.left => borderRadius.copyWith(
            bottomLeft: sharpRadius,
          ),
      };
    } else if (state.isPerviousMine && state.isNextMine) {
      return switch (state.direction) {
        MessageDirection.right => borderRadius.copyWith(
            topRight: sharpRadius,
            bottomRight: sharpRadius,
          ),
        MessageDirection.left => borderRadius.copyWith(
            topLeft: sharpRadius,
            bottomLeft: sharpRadius,
          ),
      };
    }
  }
}

/// Image message list tile for [MessageImage]
///
/// show the image and the date of the image cached or not
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
              child: Hero(
                tag: value.imageUrl,
                child: AppNetworkImage(
                  value.imageUrl,
                  fit: BoxFit.cover,
                ),
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
                value.metadata.timestamp.format(),
                style: messageTheme.imageDateTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Text message list tile for [MessageText]
///
/// detect color hex code and url and phone number
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
          Text(
            message.content,
            style: messageTheme.textStyle,
          ),
          Text(
            message.metadata.timestamp.format(),
            style: messageTheme.dateTextStyle,
          ),
        ],
      ),
    );
  }
}

/// The Input section of the discussion screen.
///
/// handle the text input and the image input
class _DiscussionInputSection extends StatelessWidget {
  const _DiscussionInputSection({
    required this.imageController,
    required this.focusNode,
    required this.textController,
    required this.actions,
    required this.onTextSend,
    required this.onImageSend,
  });

  /// The image controller to show the image preview
  final ValueNotifier<File?> imageController;

  /// On image send callback pressed
  final VoidCallback onImageSend;

  /// The focus node of the text field
  final FocusNode focusNode;

  /// The text controller of the text field :)
  final TextEditingController textController;

  /// On text send callback pressed
  final VoidCallback onTextSend;

  /// The actions of the input section
  final List<IconButton> actions;

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
            valueListenable: imageController,
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
                          imageController.value = null;
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
            valueListenable: textController,
            builder: (context, value, child) {
              final text = value.text;
              return TextFormField(
                controller: textController,
                focusNode: focusNode,
                // uncomment to set max length
                // maxLength: 1000,
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
