import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

/// Represent the login model as class instead pass it as map or params
///
/// if we need to add more fields to the login model we can add it here
@Freezed(toJson: true)
class LoginModel with _$LoginModel {
  factory LoginModel({
    required String email,
    required String password,
  }) = _LoginModel;
}
