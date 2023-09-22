import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_app/src/main/discussions/sticker.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

// TODO: implement MessageMetaData
class MessageMetaData {}

mixin _MessageMixin {
  String get idFrom;
  String get idTo;
  DateTime get timestamp;
}

const _jsonSerializable = JsonSerializable(
  explicitToJson: true,
  createFactory: true,
  createToJson: true,
  converters: [
    TimeStampJsonConverter(),
  ],
);

@Freezed(
  unionKey: 'type',
  fallbackUnion: 'fallback',
)
class Message with _$Message, _MessageMixin {
  const Message._();

  @_jsonSerializable
  const factory Message.text({
    required String idFrom,
    required String idTo,
    required DateTime timestamp,
    required String content,
  }) = MessageText;

  @_jsonSerializable
  const factory Message.image({
    required String idFrom,
    required String idTo,
    required DateTime timestamp,
    required String imageUrl,
    required String? caption,
  }) = MessageImage;

  @_jsonSerializable
  const factory Message.sticker({
    required String idFrom,
    required String idTo,
    required DateTime timestamp,
    required Sticker sticker,
  }) = MessageSticker;

  /// used for fallback when new type introduced in the future
  @_jsonSerializable
  const factory Message.fallback({
    required String idFrom,
    required String idTo,
    required DateTime timestamp,
  }) = MessageFallback;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

class TimeStampJsonConverter implements JsonConverter<DateTime, String> {
  const TimeStampJsonConverter();

  @override
  DateTime fromJson(String json) =>
      DateTime.fromMillisecondsSinceEpoch(int.parse(json));

  @override
  String toJson(DateTime object) => object.millisecondsSinceEpoch.toString();
}
