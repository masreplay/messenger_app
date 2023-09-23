import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_model.freezed.dart';
part 'sign_up_model.g.dart';

@Freezed(toJson: true)
class SignUpModel with _$SignUpModel {
  @JsonSerializable(explicitToJson: true)
  factory SignUpModel({
    required String email,
    required String password,
    required String name,
  }) = _SignUpModel;
}
