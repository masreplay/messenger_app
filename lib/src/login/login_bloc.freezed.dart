// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginCubitException _$LoginCubitExceptionFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'weak-password':
      return LoginCubitExceptionWeakPassword.fromJson(json);
    case 'email-already-in-use':
      return LoginCubitExceptionEmailAlreadyInUse.fromJson(json);
    case 'Other':
      return LoginCubitExceptionOther.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'LoginCubitException',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$LoginCubitException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function(String e) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function(String e)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function(String e)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginCubitExceptionWeakPassword value)
        weakPassword,
    required TResult Function(LoginCubitExceptionEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(LoginCubitExceptionOther value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginCubitExceptionWeakPassword value)? weakPassword,
    TResult? Function(LoginCubitExceptionEmailAlreadyInUse value)?
        emailAlreadyInUse,
    TResult? Function(LoginCubitExceptionOther value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginCubitExceptionWeakPassword value)? weakPassword,
    TResult Function(LoginCubitExceptionEmailAlreadyInUse value)?
        emailAlreadyInUse,
    TResult Function(LoginCubitExceptionOther value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCubitExceptionCopyWith<$Res> {
  factory $LoginCubitExceptionCopyWith(
          LoginCubitException value, $Res Function(LoginCubitException) then) =
      _$LoginCubitExceptionCopyWithImpl<$Res, LoginCubitException>;
}

/// @nodoc
class _$LoginCubitExceptionCopyWithImpl<$Res, $Val extends LoginCubitException>
    implements $LoginCubitExceptionCopyWith<$Res> {
  _$LoginCubitExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginCubitExceptionWeakPasswordCopyWith<$Res> {
  factory _$$LoginCubitExceptionWeakPasswordCopyWith(
          _$LoginCubitExceptionWeakPassword value,
          $Res Function(_$LoginCubitExceptionWeakPassword) then) =
      __$$LoginCubitExceptionWeakPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginCubitExceptionWeakPasswordCopyWithImpl<$Res>
    extends _$LoginCubitExceptionCopyWithImpl<$Res,
        _$LoginCubitExceptionWeakPassword>
    implements _$$LoginCubitExceptionWeakPasswordCopyWith<$Res> {
  __$$LoginCubitExceptionWeakPasswordCopyWithImpl(
      _$LoginCubitExceptionWeakPassword _value,
      $Res Function(_$LoginCubitExceptionWeakPassword) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LoginCubitExceptionWeakPassword
    extends LoginCubitExceptionWeakPassword {
  const _$LoginCubitExceptionWeakPassword({final String? $type})
      : $type = $type ?? 'weak-password',
        super._();

  factory _$LoginCubitExceptionWeakPassword.fromJson(
          Map<String, dynamic> json) =>
      _$$LoginCubitExceptionWeakPasswordFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'LoginCubitException.weakPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginCubitExceptionWeakPassword);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function(String e) other,
  }) {
    return weakPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function(String e)? other,
  }) {
    return weakPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function(String e)? other,
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
    required TResult Function(LoginCubitExceptionWeakPassword value)
        weakPassword,
    required TResult Function(LoginCubitExceptionEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(LoginCubitExceptionOther value) other,
  }) {
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginCubitExceptionWeakPassword value)? weakPassword,
    TResult? Function(LoginCubitExceptionEmailAlreadyInUse value)?
        emailAlreadyInUse,
    TResult? Function(LoginCubitExceptionOther value)? other,
  }) {
    return weakPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginCubitExceptionWeakPassword value)? weakPassword,
    TResult Function(LoginCubitExceptionEmailAlreadyInUse value)?
        emailAlreadyInUse,
    TResult Function(LoginCubitExceptionOther value)? other,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginCubitExceptionWeakPasswordToJson(
      this,
    );
  }
}

abstract class LoginCubitExceptionWeakPassword extends LoginCubitException {
  const factory LoginCubitExceptionWeakPassword() =
      _$LoginCubitExceptionWeakPassword;
  const LoginCubitExceptionWeakPassword._() : super._();

  factory LoginCubitExceptionWeakPassword.fromJson(Map<String, dynamic> json) =
      _$LoginCubitExceptionWeakPassword.fromJson;
}

/// @nodoc
abstract class _$$LoginCubitExceptionEmailAlreadyInUseCopyWith<$Res> {
  factory _$$LoginCubitExceptionEmailAlreadyInUseCopyWith(
          _$LoginCubitExceptionEmailAlreadyInUse value,
          $Res Function(_$LoginCubitExceptionEmailAlreadyInUse) then) =
      __$$LoginCubitExceptionEmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginCubitExceptionEmailAlreadyInUseCopyWithImpl<$Res>
    extends _$LoginCubitExceptionCopyWithImpl<$Res,
        _$LoginCubitExceptionEmailAlreadyInUse>
    implements _$$LoginCubitExceptionEmailAlreadyInUseCopyWith<$Res> {
  __$$LoginCubitExceptionEmailAlreadyInUseCopyWithImpl(
      _$LoginCubitExceptionEmailAlreadyInUse _value,
      $Res Function(_$LoginCubitExceptionEmailAlreadyInUse) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LoginCubitExceptionEmailAlreadyInUse
    extends LoginCubitExceptionEmailAlreadyInUse {
  const _$LoginCubitExceptionEmailAlreadyInUse({final String? $type})
      : $type = $type ?? 'email-already-in-use',
        super._();

  factory _$LoginCubitExceptionEmailAlreadyInUse.fromJson(
          Map<String, dynamic> json) =>
      _$$LoginCubitExceptionEmailAlreadyInUseFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'LoginCubitException.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginCubitExceptionEmailAlreadyInUse);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function(String e) other,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function(String e)? other,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function(String e)? other,
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
    required TResult Function(LoginCubitExceptionWeakPassword value)
        weakPassword,
    required TResult Function(LoginCubitExceptionEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(LoginCubitExceptionOther value) other,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginCubitExceptionWeakPassword value)? weakPassword,
    TResult? Function(LoginCubitExceptionEmailAlreadyInUse value)?
        emailAlreadyInUse,
    TResult? Function(LoginCubitExceptionOther value)? other,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginCubitExceptionWeakPassword value)? weakPassword,
    TResult Function(LoginCubitExceptionEmailAlreadyInUse value)?
        emailAlreadyInUse,
    TResult Function(LoginCubitExceptionOther value)? other,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginCubitExceptionEmailAlreadyInUseToJson(
      this,
    );
  }
}

abstract class LoginCubitExceptionEmailAlreadyInUse
    extends LoginCubitException {
  const factory LoginCubitExceptionEmailAlreadyInUse() =
      _$LoginCubitExceptionEmailAlreadyInUse;
  const LoginCubitExceptionEmailAlreadyInUse._() : super._();

  factory LoginCubitExceptionEmailAlreadyInUse.fromJson(
          Map<String, dynamic> json) =
      _$LoginCubitExceptionEmailAlreadyInUse.fromJson;
}

/// @nodoc
abstract class _$$LoginCubitExceptionOtherCopyWith<$Res> {
  factory _$$LoginCubitExceptionOtherCopyWith(_$LoginCubitExceptionOther value,
          $Res Function(_$LoginCubitExceptionOther) then) =
      __$$LoginCubitExceptionOtherCopyWithImpl<$Res>;
  @useResult
  $Res call({String e});
}

/// @nodoc
class __$$LoginCubitExceptionOtherCopyWithImpl<$Res>
    extends _$LoginCubitExceptionCopyWithImpl<$Res, _$LoginCubitExceptionOther>
    implements _$$LoginCubitExceptionOtherCopyWith<$Res> {
  __$$LoginCubitExceptionOtherCopyWithImpl(_$LoginCubitExceptionOther _value,
      $Res Function(_$LoginCubitExceptionOther) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$LoginCubitExceptionOther(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginCubitExceptionOther extends LoginCubitExceptionOther {
  const _$LoginCubitExceptionOther(this.e, {final String? $type})
      : $type = $type ?? 'Other',
        super._();

  factory _$LoginCubitExceptionOther.fromJson(Map<String, dynamic> json) =>
      _$$LoginCubitExceptionOtherFromJson(json);

  @override
  final String e;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'LoginCubitException.other(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginCubitExceptionOther &&
            (identical(other.e, e) || other.e == e));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginCubitExceptionOtherCopyWith<_$LoginCubitExceptionOther>
      get copyWith =>
          __$$LoginCubitExceptionOtherCopyWithImpl<_$LoginCubitExceptionOther>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() weakPassword,
    required TResult Function() emailAlreadyInUse,
    required TResult Function(String e) other,
  }) {
    return other(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? weakPassword,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function(String e)? other,
  }) {
    return other?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? weakPassword,
    TResult Function()? emailAlreadyInUse,
    TResult Function(String e)? other,
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
    required TResult Function(LoginCubitExceptionWeakPassword value)
        weakPassword,
    required TResult Function(LoginCubitExceptionEmailAlreadyInUse value)
        emailAlreadyInUse,
    required TResult Function(LoginCubitExceptionOther value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginCubitExceptionWeakPassword value)? weakPassword,
    TResult? Function(LoginCubitExceptionEmailAlreadyInUse value)?
        emailAlreadyInUse,
    TResult? Function(LoginCubitExceptionOther value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginCubitExceptionWeakPassword value)? weakPassword,
    TResult Function(LoginCubitExceptionEmailAlreadyInUse value)?
        emailAlreadyInUse,
    TResult Function(LoginCubitExceptionOther value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginCubitExceptionOtherToJson(
      this,
    );
  }
}

abstract class LoginCubitExceptionOther extends LoginCubitException {
  const factory LoginCubitExceptionOther(final String e) =
      _$LoginCubitExceptionOther;
  const LoginCubitExceptionOther._() : super._();

  factory LoginCubitExceptionOther.fromJson(Map<String, dynamic> json) =
      _$LoginCubitExceptionOther.fromJson;

  String get e;
  @JsonKey(ignore: true)
  _$$LoginCubitExceptionOtherCopyWith<_$LoginCubitExceptionOther>
      get copyWith => throw _privateConstructorUsedError;
}
