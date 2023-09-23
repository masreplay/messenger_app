import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed(
  fromJson: false,
  toJson: true,
)
class UserCreate with _$UserCreate {
  factory UserCreate({
    required String uid,
    required String email,
    @JsonKey(toJson: fieldValueToJson) required FieldValue createdAt,
    required String? avatar,
    required String name,
  }) = _UserCreate;
}

FieldValue fieldValueToJson(FieldValue fieldValue) => fieldValue;

@freezed
class UserData with _$UserData {
  factory UserData({
    required String uid,
    required String email,
    @TimeStampJsonConverter() required DateTime createdAt,
    required String? avatar,
    required String name,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

class TimeStampJsonConverter extends JsonConverter<DateTime, Timestamp> {
  const TimeStampJsonConverter();

  @override
  DateTime fromJson(Timestamp json) => json.toDate();

  @override
  Timestamp toJson(DateTime object) => Timestamp.fromDate(object);
}
