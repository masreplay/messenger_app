// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discussion_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscussionGroup _$DiscussionGroupFromJson(Map<String, dynamic> json) {
  return _DiscussionGroup.fromJson(json);
}

/// @nodoc
mixin _$DiscussionGroup {
  String get userId => throw _privateConstructorUsedError;
  String get peerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscussionGroupCopyWith<DiscussionGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscussionGroupCopyWith<$Res> {
  factory $DiscussionGroupCopyWith(
          DiscussionGroup value, $Res Function(DiscussionGroup) then) =
      _$DiscussionGroupCopyWithImpl<$Res, DiscussionGroup>;
  @useResult
  $Res call({String userId, String peerId});
}

/// @nodoc
class _$DiscussionGroupCopyWithImpl<$Res, $Val extends DiscussionGroup>
    implements $DiscussionGroupCopyWith<$Res> {
  _$DiscussionGroupCopyWithImpl(this._value, this._then);

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
abstract class _$$_DiscussionGroupCopyWith<$Res>
    implements $DiscussionGroupCopyWith<$Res> {
  factory _$$_DiscussionGroupCopyWith(
          _$_DiscussionGroup value, $Res Function(_$_DiscussionGroup) then) =
      __$$_DiscussionGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String peerId});
}

/// @nodoc
class __$$_DiscussionGroupCopyWithImpl<$Res>
    extends _$DiscussionGroupCopyWithImpl<$Res, _$_DiscussionGroup>
    implements _$$_DiscussionGroupCopyWith<$Res> {
  __$$_DiscussionGroupCopyWithImpl(
      _$_DiscussionGroup _value, $Res Function(_$_DiscussionGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? peerId = null,
  }) {
    return _then(_$_DiscussionGroup(
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
class _$_DiscussionGroup extends _DiscussionGroup with DiagnosticableTreeMixin {
  const _$_DiscussionGroup({required this.userId, required this.peerId})
      : super._();

  factory _$_DiscussionGroup.fromJson(Map<String, dynamic> json) =>
      _$$_DiscussionGroupFromJson(json);

  @override
  final String userId;
  @override
  final String peerId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DiscussionGroup(userId: $userId, peerId: $peerId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DiscussionGroup'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('peerId', peerId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscussionGroup &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.peerId, peerId) || other.peerId == peerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, peerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscussionGroupCopyWith<_$_DiscussionGroup> get copyWith =>
      __$$_DiscussionGroupCopyWithImpl<_$_DiscussionGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscussionGroupToJson(
      this,
    );
  }
}

abstract class _DiscussionGroup extends DiscussionGroup {
  const factory _DiscussionGroup(
      {required final String userId,
      required final String peerId}) = _$_DiscussionGroup;
  const _DiscussionGroup._() : super._();

  factory _DiscussionGroup.fromJson(Map<String, dynamic> json) =
      _$_DiscussionGroup.fromJson;

  @override
  String get userId;
  @override
  String get peerId;
  @override
  @JsonKey(ignore: true)
  _$$_DiscussionGroupCopyWith<_$_DiscussionGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
