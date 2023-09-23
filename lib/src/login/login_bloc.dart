import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/bloc/async_state.dart';
import 'package:messenger_app/data/models/login_model.dart';

part 'login_bloc.freezed.dart';
part 'login_bloc.g.dart';
part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginCubitState> {
  LoginCubit() : super(const LoginCubitState.initial());

  Future<void> login(LoginModel body) async {
    emit(const LoginCubitState.loading());

    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: body.email,
        password: body.password,
      );

      emit(LoginCubitState.data(credential));
    } on FirebaseAuthException catch (e, stackTrace) {
      log(toString(), error: e, stackTrace: stackTrace);
      emit(
        LoginCubitState.error(
          LoginCubitException.fromType(e.code),
          stackTrace,
        ),
      );
    } catch (e, stackTrace) {
      log(toString(), error: e, stackTrace: stackTrace);
      emit(
        LoginCubitState.error(
          LoginCubitException.other(e),
          stackTrace,
        ),
      );
    }
  }
}

@Freezed(
  unionKey: 'type',
  fallbackUnion: 'other',
  unionValueCase: FreezedUnionCase.kebab,
)
class LoginCubitException with _$LoginCubitException {
  const LoginCubitException._();

  const factory LoginCubitException.weakPassword() =
      LoginCubitExceptionWeakPassword;

  @FreezedUnionValue("INVALID_LOGIN_CREDENTIALS")
  const factory LoginCubitException.invalidLoginCredentials() =
      LoginCubitExceptionEmailAlreadyInUse;

  const factory LoginCubitException.other(Object? e) = LoginCubitExceptionOther;

  factory LoginCubitException.fromType(String type) =>
      LoginCubitException.fromJson({"type": type});

  factory LoginCubitException.fromJson(Map<String, dynamic> json) =>
      _$LoginCubitExceptionFromJson(json);
}
