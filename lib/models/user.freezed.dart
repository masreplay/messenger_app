// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserCreate {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(toJson: UserCreate.fieldValueToJson)
  FieldValue get createdAt => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCreateCopyWith<UserCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCreateCopyWith<$Res> {
  factory $UserCreateCopyWith(
          UserCreate value, $Res Function(UserCreate) then) =
      _$UserCreateCopyWithImpl<$Res, UserCreate>;
  @useResult
  $Res call(
      {String uid,
      String email,
      @JsonKey(toJson: UserCreate.fieldValueToJson) FieldValue createdAt,
      String? avatar,
      String? name});
}

/// @nodoc
class _$UserCreateCopyWithImpl<$Res, $Val extends UserCreate>
    implements $UserCreateCopyWith<$Res> {
  _$UserCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? createdAt = null,
    Object? avatar = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCreateCopyWith<$Res>
    implements $UserCreateCopyWith<$Res> {
  factory _$$_UserCreateCopyWith(
          _$_UserCreate value, $Res Function(_$_UserCreate) then) =
      __$$_UserCreateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String email,
      @JsonKey(toJson: UserCreate.fieldValueToJson) FieldValue createdAt,
      String? avatar,
      String? name});
}

/// @nodoc
class __$$_UserCreateCopyWithImpl<$Res>
    extends _$UserCreateCopyWithImpl<$Res, _$_UserCreate>
    implements _$$_UserCreateCopyWith<$Res> {
  __$$_UserCreateCopyWithImpl(
      _$_UserCreate _value, $Res Function(_$_UserCreate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? createdAt = null,
    Object? avatar = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_UserCreate(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_UserCreate implements _UserCreate {
  _$_UserCreate(
      {required this.uid,
      required this.email,
      @JsonKey(toJson: UserCreate.fieldValueToJson) required this.createdAt,
      required this.avatar,
      required this.name});

  @override
  final String uid;
  @override
  final String email;
  @override
  @JsonKey(toJson: UserCreate.fieldValueToJson)
  final FieldValue createdAt;
  @override
  final String? avatar;
  @override
  final String? name;

  @override
  String toString() {
    return 'UserCreate(uid: $uid, email: $email, createdAt: $createdAt, avatar: $avatar, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCreate &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, email, createdAt, avatar, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCreateCopyWith<_$_UserCreate> get copyWith =>
      __$$_UserCreateCopyWithImpl<_$_UserCreate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCreateToJson(
      this,
    );
  }
}

abstract class _UserCreate implements UserCreate {
  factory _UserCreate(
      {required final String uid,
      required final String email,
      @JsonKey(toJson: UserCreate.fieldValueToJson)
      required final FieldValue createdAt,
      required final String? avatar,
      required final String? name}) = _$_UserCreate;

  @override
  String get uid;
  @override
  String get email;
  @override
  @JsonKey(toJson: UserCreate.fieldValueToJson)
  FieldValue get createdAt;
  @override
  String? get avatar;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_UserCreateCopyWith<_$_UserCreate> get copyWith =>
      throw _privateConstructorUsedError;
}
