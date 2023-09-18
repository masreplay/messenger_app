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
    @JsonKey(toJson: UserCreate.fieldValueToJson) required FieldValue createdAt,
    required String? avatar,
    required String? name,
  }) = _UserCreate;

  static FieldValue fieldValueToJson(FieldValue fieldValue) => fieldValue;
}
