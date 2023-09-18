import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/bloc/state.dart';
import 'package:messenger_app/models/user.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_bloc.g.dart';

typedef SignUpCubitState = State<UserCredential, SignUpCubitException>;

@injectable
class SignUpCubit extends Cubit<SignUpCubitState> {
  SignUpCubit() : super(const SignUpCubitState.initial());

  Future<void> signUp(String email, String password) async {
    emit(const State.loading());

    try {
      final auth = FirebaseAuth.instance;

      final credential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final uid = credential.user!.uid;

      if (credential.additionalUserInfo?.isNewUser == true) {
        final result =
            await FirebaseFirestore.instance.collection("users").doc(uid).get();

        if (!result.exists) {
          final user = UserCreate(
            uid: uid,
            email: email,
            createdAt: FieldValue.serverTimestamp(),
            avatar: null,
            name: null,
          );
          await FirebaseFirestore.instance
              .collection('users')
              .doc(uid)
              .set(user.toJson());
        }
      }

      emit(SignUpCubitState.data(credential));
    } on FirebaseAuthException catch (e, stackTrace) {
      log(toString(), error: e, stackTrace: stackTrace);
      emit(SignUpCubitState.error(
        SignUpCubitException.fromType(e.code),
        stackTrace,
      ));
    } catch (e, stackTrace) {
      log(toString(), error: e, stackTrace: stackTrace);
      emit(SignUpCubitState.error(
        SignUpCubitException.other(e),
        stackTrace,
      ));
    }
  }
}

@Freezed(
  unionKey: 'type',
  fallbackUnion: 'other',
  unionValueCase: FreezedUnionCase.kebab,
)
class SignUpCubitException with _$SignUpCubitException {
  const SignUpCubitException._();

  const factory SignUpCubitException.weakPassword() =
      SignUpCubitExceptionWeakPassword;

  const factory SignUpCubitException.emailAlreadyInUse() =
      SignUpCubitExceptionEmailAlreadyInUse;

  const factory SignUpCubitException.other(Object? e) =
      SignUpCubitExceptionOther;

  factory SignUpCubitException.fromType(String type) =>
      SignUpCubitException.fromJson({"type": type});

  factory SignUpCubitException.fromJson(Map<String, dynamic> json) =>
      _$SignUpCubitExceptionFromJson(json);
}
