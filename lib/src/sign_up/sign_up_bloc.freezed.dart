// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpCubitException _$SignUpCubitExceptionFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'weak-password':
      return SignUpCubitExceptionWeakPassword.fromJson(json);
    case 'email-already-in-use':
      return SignUpCubitExceptionEmailAlreadyInUse.fromJson(json);

    default:
      return SignUpCubitExceptionOther.fromJson(json);
  }
}

/// @nodoc
mixin _$SignUpCubitException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function(Object? e) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function(Object? e)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function(Object? e)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpCubitExceptionWeakPassword value)
        weakPassword,
    required TResult Function(SignUpCubitExceptionEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(SignUpCubitExceptionOther value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpCubitExceptionWeakPassword value)? weakPassword,
    TResult? Function(SignUpCubitExceptionEmailAlreadyInUse value)?
        emailAlreadyInUse,
    TResult? Function(SignUpCubitExceptionOther value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpCubitExceptionWeakPassword value)? weakPassword,
    TResult Function(SignUpCubitExceptionEmailAlreadyInUse value)?
        emailAlreadyInUse,
    TResult Function(SignUpCubitExceptionOther value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpCubitExceptionCopyWith<$Res> {
  factory $SignUpCubitExceptionCopyWith(SignUpCubitException value,
          $Res Function(SignUpCubitException) then) =
      _$SignUpCubitExceptionCopyWithImpl<$Res, SignUpCubitException>;
}

/// @nodoc
class _$SignUpCubitExceptionCopyWithImpl<$Res,
        $Val extends SignUpCubitException>
    implements $SignUpCubitExceptionCopyWith<$Res> {
  _$SignUpCubitExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpCubitExceptionWeakPasswordCopyWith<$Res> {
  factory _$$SignUpCubitExceptionWeakPasswordCopyWith(
          _$SignUpCubitExceptionWeakPassword value,
          $Res Function(_$SignUpCubitExceptionWeakPassword) then) =
      __$$SignUpCubitExceptionWeakPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpCubitExceptionWeakPasswordCopyWithImpl<$Res>
    extends _$SignUpCubitExceptionCopyWithImpl<$Res,
        _$SignUpCubitExceptionWeakPassword>
    implements _$$SignUpCubitExceptionWeakPasswordCopyWith<$Res> {
  __$$SignUpCubitExceptionWeakPasswordCopyWithImpl(
      _$SignUpCubitExceptionWeakPassword _value,
      $Res Function(_$SignUpCubitExceptionWeakPassword) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SignUpCubitExceptionWeakPassword
    extends SignUpCubitExceptionWeakPassword {
  const _$SignUpCubitExceptionWeakPassword({final String? $type})
      : $type = $type ?? 'weak-password',
        super._();

  factory _$SignUpCubitExceptionWeakPassword.fromJson(
          Map<String, dynamic> json) =>
      _$$SignUpCubitExceptionWeakPasswordFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'SignUpCubitException.weakPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpCubitExceptionWeakPassword);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function(Object? e) other,
  }) {
    return weakPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function(Object? e)? other,
  }) {
    return weakPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function(Object? e)? other,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpCubitExceptionWeakPassword value)
        weakPassword,
    required TResult Function(SignUpCubitExceptionEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(SignUpCubitExceptionOther value) other,
  }) {
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpCubitExceptionWeakPassword value)? weakPassword,
    TResult? Function(SignUpCubitExceptionEmailAlreadyInUse value)?
        emailAlreadyInUse,
    TResult? Function(SignUpCubitExceptionOther value)? other,
  }) {
    return weakPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpCubitExceptionWeakPassword value)? weakPassword,
    TResult Function(SignUpCubitExceptionEmailAlreadyInUse value)?
        emailAlreadyInUse,
    TResult Function(SignUpCubitExceptionOther value)? other,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpCubitExceptionWeakPasswordToJson(
      this,
    );
  }
}

abstract class SignUpCubitExceptionWeakPassword extends SignUpCubitException {
  const factory SignUpCubitExceptionWeakPassword() =
      _$SignUpCubitExceptionWeakPassword;
  const SignUpCubitExceptionWeakPassword._() : super._();

  factory SignUpCubitExceptionWeakPassword.fromJson(Map<String, dynamic> json) =
      _$SignUpCubitExceptionWeakPassword.fromJson;
}

/// @nodoc
abstract class _$$SignUpCubitExceptionEmailAlreadyInUseCopyWith<$Res> {
  factory _$$SignUpCubitExceptionEmailAlreadyInUseCopyWith(
          _$SignUpCubitExceptionEmailAlreadyInUse value,
          $Res Function(_$SignUpCubitExceptionEmailAlreadyInUse) then) =
      __$$SignUpCubitExceptionEmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpCubitExceptionEmailAlreadyInUseCopyWithImpl<$Res>
    extends _$SignUpCubitExceptionCopyWithImpl<$Res,
        _$SignUpCubitExceptionEmailAlreadyInUse>
    implements _$$SignUpCubitExceptionEmailAlreadyInUseCopyWith<$Res> {
  __$$SignUpCubitExceptionEmailAlreadyInUseCopyWithImpl(
      _$SignUpCubitExceptionEmailAlreadyInUse _value,
      $Res Function(_$SignUpCubitExceptionEmailAlreadyInUse) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SignUpCubitExceptionEmailAlreadyInUse
    extends SignUpCubitExceptionEmailAlreadyInUse {
  const _$SignUpCubitExceptionEmailAlreadyInUse({final String? $type})
      : $type = $type ?? 'email-already-in-use',
        super._();

  factory _$SignUpCubitExceptionEmailAlreadyInUse.fromJson(
          Map<String, dynamic> json) =>
      _$$SignUpCubitExceptionEmailAlreadyInUseFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'SignUpCubitException.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpCubitExceptionEmailAlreadyInUse);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function(Object? e) other,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function(Object? e)? other,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function(Object? e)? other,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpCubitExceptionWeakPassword value)
        weakPassword,
    required TResult Function(SignUpCubitExceptionEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(SignUpCubitExceptionOther value) other,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpCubitExceptionWeakPassword value)? weakPassword,
    TResult? Function(SignUpCubitExceptionEmailAlreadyInUse value)?
        emailAlreadyInUse,
    TResult? Function(SignUpCubitExceptionOther value)? other,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpCubitExceptionWeakPassword value)? weakPassword,
    TResult Function(SignUpCubitExceptionEmailAlreadyInUse value)?
        emailAlreadyInUse,
    TResult Function(SignUpCubitExceptionOther value)? other,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpCubitExceptionEmailAlreadyInUseToJson(
      this,
    );
  }
}

abstract class SignUpCubitExceptionEmailAlreadyInUse
    extends SignUpCubitException {
  const factory SignUpCubitExceptionEmailAlreadyInUse() =
      _$SignUpCubitExceptionEmailAlreadyInUse;
  const SignUpCubitExceptionEmailAlreadyInUse._() : super._();

  factory SignUpCubitExceptionEmailAlreadyInUse.fromJson(
          Map<String, dynamic> json) =
      _$SignUpCubitExceptionEmailAlreadyInUse.fromJson;
}

/// @nodoc
abstract class _$$SignUpCubitExceptionOtherCopyWith<$Res> {
  factory _$$SignUpCubitExceptionOtherCopyWith(
          _$SignUpCubitExceptionOther value,
          $Res Function(_$SignUpCubitExceptionOther) then) =
      __$$SignUpCubitExceptionOtherCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? e});
}

/// @nodoc
class __$$SignUpCubitExceptionOtherCopyWithImpl<$Res>
    extends _$SignUpCubitExceptionCopyWithImpl<$Res,
        _$SignUpCubitExceptionOther>
    implements _$$SignUpCubitExceptionOtherCopyWith<$Res> {
  __$$SignUpCubitExceptionOtherCopyWithImpl(_$SignUpCubitExceptionOther _value,
      $Res Function(_$SignUpCubitExceptionOther) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$SignUpCubitExceptionOther(
      freezed == e ? _value.e : e,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpCubitExceptionOther extends SignUpCubitExceptionOther {
  const _$SignUpCubitExceptionOther(this.e, {final String? $type})
      : $type = $type ?? 'other',
        super._();

  factory _$SignUpCubitExceptionOther.fromJson(Map<String, dynamic> json) =>
      _$$SignUpCubitExceptionOtherFromJson(json);

  @override
  final Object? e;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'SignUpCubitException.other(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpCubitExceptionOther &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpCubitExceptionOtherCopyWith<_$SignUpCubitExceptionOther>
      get copyWith => __$$SignUpCubitExceptionOtherCopyWithImpl<
          _$SignUpCubitExceptionOther>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function(Object? e) other,
  }) {
    return other(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function(Object? e)? other,
  }) {
    return other?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function(Object? e)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpCubitExceptionWeakPassword value)
        weakPassword,
    required TResult Function(SignUpCubitExceptionEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(SignUpCubitExceptionOther value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpCubitExceptionWeakPassword value)? weakPassword,
    TResult? Function(SignUpCubitExceptionEmailAlreadyInUse value)?
        emailAlreadyInUse,
    TResult? Function(SignUpCubitExceptionOther value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpCubitExceptionWeakPassword value)? weakPassword,
    TResult Function(SignUpCubitExceptionEmailAlreadyInUse value)?
        emailAlreadyInUse,
    TResult Function(SignUpCubitExceptionOther value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpCubitExceptionOtherToJson(
      this,
    );
  }
}

abstract class SignUpCubitExceptionOther extends SignUpCubitException {
  const factory SignUpCubitExceptionOther(final Object? e) =
      _$SignUpCubitExceptionOther;
  const SignUpCubitExceptionOther._() : super._();

  factory SignUpCubitExceptionOther.fromJson(Map<String, dynamic> json) =
      _$SignUpCubitExceptionOther.fromJson;

  Object? get e;
  @JsonKey(ignore: true)
  _$$SignUpCubitExceptionOtherCopyWith<_$SignUpCubitExceptionOther>
      get copyWith => throw _privateConstructorUsedError;
}
