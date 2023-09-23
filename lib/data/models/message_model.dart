import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'sticker.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

const _jsonSerializable = JsonSerializable(
  explicitToJson: true,
  createFactory: true,
  createToJson: true,
);

@freezed
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
  static FieldValue _toJsonTimestamp(_) => FieldValue.serverTimestamp();
  static DateTime _fromJsonTimestamp(String json) =>
      DateTime.fromMillisecondsSinceEpoch(int.parse(json));

  factory MessageMetaData.fromJson(Map<String, dynamic> json) =>
      _$MessageMetaDataFromJson(json);
}

mixin _MessageMixin {
  MessageMetaData get metadata;
}

const Freezed messageFreezed = Freezed(
  unionKey: 'type',
  fallbackUnion: 'fallback',
);

@messageFreezed
class Message with _$Message, _MessageMixin {
  const Message._();

  @_jsonSerializable
  const factory Message.text({
    required MessageMetaData metadata,
    required String content,
  }) = MessageText;

  @_jsonSerializable
  const factory Message.image({
    required MessageMetaData metadata,
    required String imageUrl,
    required String? caption,
  }) = MessageImage;

  @_jsonSerializable
  const factory Message.sticker({
    required MessageMetaData metadata,
    required Sticker sticker,
  }) = MessageSticker;

  /// used for fallback when new type introduced in the future
  @_jsonSerializable
  const factory Message.fallback({
    required MessageMetaData metadata,
  }) = MessageFallback;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
