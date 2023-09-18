import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_app/bloc/state.dart';

part 'login_bloc.freezed.dart';
part 'login_bloc.g.dart';

typedef LoginCubitState = State<UserCredential, LoginCubitException>;

class LoginCubit extends Cubit<LoginCubitState> {
  LoginCubit() : super(const LoginCubitState.initial());

  Future<void> login(String email, String password) async {
    emit(const State.initial());

    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      emit(LoginCubitState.data(credential));
    } on FirebaseAuthException catch (e, stackTrace) {
      emit(LoginCubitState.error(
        LoginCubitException.fromType(e.code),
        stackTrace,
      ));
    } catch (e, stackTrace) {
      emit(LoginCubitState.error(
        LoginCubitException.other(e.toString()),
        stackTrace,
      ));
    }
  }
}

@Freezed(
  unionKey: 'type',
  unionValueCase: FreezedUnionCase.pascal,
)
class LoginCubitException with _$LoginCubitException {
  const LoginCubitException._();
  @FreezedUnionValue("weak-password")
  const factory LoginCubitException.weakPassword() =
      LoginCubitExceptionWeakPassword;

  @FreezedUnionValue("email-already-in-use")
  const factory LoginCubitException.emailAlreadyInUse() =
      LoginCubitExceptionEmailAlreadyInUse;

  const factory LoginCubitException.other(String e) = LoginCubitExceptionOther;

  factory LoginCubitException.fromType(String type) =>
      LoginCubitException.fromJson({"type": type});

  factory LoginCubitException.fromJson(Map<String, dynamic> json) =>
      _$LoginCubitExceptionFromJson(json);
}
