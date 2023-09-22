// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stickers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StickersException _$StickersExceptionFromJson(Map<String, dynamic> json) {
  return _StickersException.fromJson(json);
}

/// @nodoc
mixin _$StickersException {
  Object? get e => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? e) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? e)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? e)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StickersException value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StickersException value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StickersException value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StickersExceptionCopyWith<StickersException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickersExceptionCopyWith<$Res> {
  factory $StickersExceptionCopyWith(
          StickersException value, $Res Function(StickersException) then) =
      _$StickersExceptionCopyWithImpl<$Res, StickersException>;
  @useResult
  $Res call({Object? e});
}

/// @nodoc
class _$StickersExceptionCopyWithImpl<$Res, $Val extends StickersException>
    implements $StickersExceptionCopyWith<$Res> {
  _$StickersExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_value.copyWith(
      e: freezed == e ? _value.e : e,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StickersExceptionCopyWith<$Res>
    implements $StickersExceptionCopyWith<$Res> {
  factory _$$_StickersExceptionCopyWith(_$_StickersException value,
          $Res Function(_$_StickersException) then) =
      __$$_StickersExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object? e});
}

/// @nodoc
class __$$_StickersExceptionCopyWithImpl<$Res>
    extends _$StickersExceptionCopyWithImpl<$Res, _$_StickersException>
    implements _$$_StickersExceptionCopyWith<$Res> {
  __$$_StickersExceptionCopyWithImpl(
      _$_StickersException _value, $Res Function(_$_StickersException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_StickersException(
      freezed == e ? _value.e : e,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StickersException
    with DiagnosticableTreeMixin
    implements _StickersException {
  _$_StickersException(this.e);

  factory _$_StickersException.fromJson(Map<String, dynamic> json) =>
      _$$_StickersExceptionFromJson(json);

  @override
  final Object? e;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StickersException.other(e: $e)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StickersException.other'))
      ..add(DiagnosticsProperty('e', e));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StickersException &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StickersExceptionCopyWith<_$_StickersException> get copyWith =>
      __$$_StickersExceptionCopyWithImpl<_$_StickersException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? e) other,
  }) {
    return other(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? e)? other,
  }) {
    return other?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_StickersException value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StickersException value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StickersException value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_StickersExceptionToJson(
      this,
    );
  }
}

abstract class _StickersException implements StickersException {
  factory _StickersException(final Object? e) = _$_StickersException;

  factory _StickersException.fromJson(Map<String, dynamic> json) =
      _$_StickersException.fromJson;

  @override
  Object? get e;
  @override
  @JsonKey(ignore: true)
  _$$_StickersExceptionCopyWith<_$_StickersException> get copyWith =>
      throw _privateConstructorUsedError;
}
