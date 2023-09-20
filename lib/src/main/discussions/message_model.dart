import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

mixin _MessageMixin {
  String get idFrom;
  String get idTo;
  DateTime get timestamp;
}

@Freezed(unionKey: 'type')
class Message with _$Message, _MessageMixin {
  const Message._();

  const factory Message.text({
    required String idFrom,
    required String idTo,
    @TimeStampJsonConverter() required DateTime timestamp,
    required String content,
  }) = _MessageText;

  const factory Message.image({
    required String idFrom,
    required String idTo,
    @TimeStampJsonConverter() required DateTime timestamp,
    required String? imageUrl,
    required String? caption,
  }) = _MessageText;

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
