import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_app/data/id.dart';

import 'sticker.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

const _jsonSerializable = JsonSerializable(
  explicitToJson: true,
  createFactory: true,
  createToJson: true,
);

@Freezed(toJson: true, fromJson: true)
class MessageMetaData with _$MessageMetaData {
  @_jsonSerializable
  const factory MessageMetaData({
    required String idFrom,
    required String idTo,
    @JsonKey(
      toJson: MessageMetaData._toJsonTimestamp,
      fromJson: MessageMetaData._fromJsonTimestamp,
    )
    required DateTime timestamp,
  }) = _MessageMetaData;

  // Ignore what is passed in, always send server server timestamp
  static String _toJsonTimestamp(_) =>
      DateTime.now().millisecondsSinceEpoch.toString();
  static DateTime _fromJsonTimestamp(String json) =>
      DateTime.fromMillisecondsSinceEpoch(int.parse(json));

  factory MessageMetaData.fromJson(Map<String, dynamic> json) =>
      _$MessageMetaDataFromJson(json);
}

mixin _MessageMixin {
  MessageMetaData get metadata;
}

const String _messageTypeKey = 'type';

@Freezed(
  unionKey: _messageTypeKey,
  fallbackUnion: 'fallback',
  toJson: true,
  fromJson: true,
)
class Message with _$Message, _MessageMixin {
  const Message._();

  @_jsonSerializable
  const factory Message.text({
    required Id id,
    required MessageMetaData metadata,
    required MessageContentText content,
  }) = MessageText;

  @_jsonSerializable
  const factory Message.image({
    required Id id,
    required MessageMetaData metadata,
    required MessageContentImage content,
  }) = MessageImage;

  @_jsonSerializable
  const factory Message.sticker({
    required Id id,
    required MessageMetaData metadata,
    required MessageContentSticker content,
  }) = MessageSticker;

  /// used for fallback when new type introduced in the future
  @_jsonSerializable
  const factory Message.fallback({
    required Id id,
    required MessageMetaData metadata,
  }) = MessageFallback;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

const _addJsonSerializable = JsonSerializable(
  createToJson: true,
  createFactory: false,
  explicitToJson: true,
);

@Freezed(unionKey: _messageTypeKey, toJson: true, fromJson: false)
class MessageAdd with _$MessageAdd {
  const MessageAdd._();
  @_addJsonSerializable
  const factory MessageAdd.text({
    required MessageContentText content,
    required MessageMetaData metadata,
  }) = MessageAddText;

  @_addJsonSerializable
  const factory MessageAdd.image({
    required MessageContentImage content,
    required MessageMetaData metadata,
  }) = MessageAddImage;

  @_addJsonSerializable
  const factory MessageAdd.sticker({
    required MessageContentSticker content,
    required MessageMetaData metadata,
  }) = MessageAddSticker;
}

const _contentJsonSerializable = JsonSerializable(
  createToJson: true,
  createFactory: true,
  explicitToJson: true,
);

@Freezed(toJson: true, fromJson: true)
class MessageContentText with _$MessageContentText {
  @_contentJsonSerializable
  const factory MessageContentText({
    required String text,
  }) = _MessageContentText;

  factory MessageContentText.fromJson(Map<String, dynamic> json) =>
      _$MessageContentTextFromJson(json);
}

@Freezed(toJson: true, fromJson: true)
class MessageContentImage with _$MessageContentImage {
  @_contentJsonSerializable
  const factory MessageContentImage({
    required String imageUrl,
    required String? caption,
  }) = _MessageContentImage;

  factory MessageContentImage.fromJson(Map<String, dynamic> json) =>
      _$MessageContentImageFromJson(json);
}

@Freezed(toJson: true, fromJson: true)
class MessageContentSticker with _$MessageContentSticker {
  @_contentJsonSerializable
  const factory MessageContentSticker({
    required Sticker sticker,
  }) = _MessageContentSticker;

  factory MessageContentSticker.fromJson(Map<String, dynamic> json) =>
      _$MessageContentStickerFromJson(json);
}
