// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatGroup _$ChatGroupFromJson(Map<String, dynamic> json) {
  return _ChatGroup.fromJson(json);
}

/// @nodoc
mixin _$ChatGroup {
  String get userId => throw _privateConstructorUsedError;
  String get peerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatGroupCopyWith<ChatGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatGroupCopyWith<$Res> {
  factory $ChatGroupCopyWith(ChatGroup value, $Res Function(ChatGroup) then) =
      _$ChatGroupCopyWithImpl<$Res, ChatGroup>;
  @useResult
  $Res call({String userId, String peerId});
}

/// @nodoc
class _$ChatGroupCopyWithImpl<$Res, $Val extends ChatGroup>
    implements $ChatGroupCopyWith<$Res> {
  _$ChatGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? peerId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      peerId: null == peerId
          ? _value.peerId
          : peerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatGroupCopyWith<$Res> implements $ChatGroupCopyWith<$Res> {
  factory _$$_ChatGroupCopyWith(
          _$_ChatGroup value, $Res Function(_$_ChatGroup) then) =
      __$$_ChatGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String peerId});
}

/// @nodoc
class __$$_ChatGroupCopyWithImpl<$Res>
    extends _$ChatGroupCopyWithImpl<$Res, _$_ChatGroup>
    implements _$$_ChatGroupCopyWith<$Res> {
  __$$_ChatGroupCopyWithImpl(
      _$_ChatGroup _value, $Res Function(_$_ChatGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? peerId = null,
  }) {
    return _then(_$_ChatGroup(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      peerId: null == peerId
          ? _value.peerId
          : peerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatGroup extends _ChatGroup {
  const _$_ChatGroup({required this.userId, required this.peerId}) : super._();

  factory _$_ChatGroup.fromJson(Map<String, dynamic> json) =>
      _$$_ChatGroupFromJson(json);

  @override
  final String userId;
  @override
  final String peerId;

  @override
  String toString() {
    return 'ChatGroup(userId: $userId, peerId: $peerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatGroup &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.peerId, peerId) || other.peerId == peerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, peerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatGroupCopyWith<_$_ChatGroup> get copyWith =>
      __$$_ChatGroupCopyWithImpl<_$_ChatGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatGroupToJson(
      this,
    );
  }
}

abstract class _ChatGroup extends ChatGroup {
  const factory _ChatGroup(
      {required final String userId,
      required final String peerId}) = _$_ChatGroup;
  const _ChatGroup._() : super._();

  factory _ChatGroup.fromJson(Map<String, dynamic> json) =
      _$_ChatGroup.fromJson;

  @override
  String get userId;
  @override
  String get peerId;
  @override
  @JsonKey(ignore: true)
  _$$_ChatGroupCopyWith<_$_ChatGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
