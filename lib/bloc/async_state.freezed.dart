// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AsyncState<Data, Error> _$AsyncStateFromJson<Data, Error>(
    Map<String, dynamic> json,
    Data Function(Object?) fromJsonData,
    Error Function(Object?) fromJsonError) {
  switch (json['type']) {
    case 'Initial':
      return AsyncStateInitial<Data, Error>.fromJson(
          json, fromJsonData, fromJsonError);
    case 'Loading':
      return AsyncStateLoading<Data, Error>.fromJson(
          json, fromJsonData, fromJsonError);
    case 'Data':
      return AsyncStateData<Data, Error>.fromJson(
          json, fromJsonData, fromJsonError);
    case 'Error':
      return AsyncStateError<Data, Error>.fromJson(
          json, fromJsonData, fromJsonError);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'AsyncState', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$AsyncState<Data, Error> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Data data) data,
    required TResult Function(
            Error error, @StackTraceConverter() StackTrace stackTrace)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Data data)? data,
    TResult? Function(
            Error error, @StackTraceConverter() StackTrace stackTrace)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Data data)? data,
    TResult Function(Error error, @StackTraceConverter() StackTrace stackTrace)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncStateInitial<Data, Error> value) initial,
    required TResult Function(AsyncStateLoading<Data, Error> value) loading,
    required TResult Function(AsyncStateData<Data, Error> value) data,
    required TResult Function(AsyncStateError<Data, Error> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncStateInitial<Data, Error> value)? initial,
    TResult? Function(AsyncStateLoading<Data, Error> value)? loading,
    TResult? Function(AsyncStateData<Data, Error> value)? data,
    TResult? Function(AsyncStateError<Data, Error> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncStateInitial<Data, Error> value)? initial,
    TResult Function(AsyncStateLoading<Data, Error> value)? loading,
    TResult Function(AsyncStateData<Data, Error> value)? data,
    TResult Function(AsyncStateError<Data, Error> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson(Object? Function(Data) toJsonData,
          Object? Function(Error) toJsonError) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncStateCopyWith<Data, Error, $Res> {
  factory $AsyncStateCopyWith(AsyncState<Data, Error> value,
          $Res Function(AsyncState<Data, Error>) then) =
      _$AsyncStateCopyWithImpl<Data, Error, $Res, AsyncState<Data, Error>>;
}

/// @nodoc
class _$AsyncStateCopyWithImpl<Data, Error, $Res,
        $Val extends AsyncState<Data, Error>>
    implements $AsyncStateCopyWith<Data, Error, $Res> {
  _$AsyncStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AsyncStateInitialCopyWith<Data, Error, $Res> {
  factory _$$AsyncStateInitialCopyWith(_$AsyncStateInitial<Data, Error> value,
          $Res Function(_$AsyncStateInitial<Data, Error>) then) =
      __$$AsyncStateInitialCopyWithImpl<Data, Error, $Res>;
}

/// @nodoc
class __$$AsyncStateInitialCopyWithImpl<Data, Error, $Res>
    extends _$AsyncStateCopyWithImpl<Data, Error, $Res,
        _$AsyncStateInitial<Data, Error>>
    implements _$$AsyncStateInitialCopyWith<Data, Error, $Res> {
  __$$AsyncStateInitialCopyWithImpl(_$AsyncStateInitial<Data, Error> _value,
      $Res Function(_$AsyncStateInitial<Data, Error>) _then)
      : super(_value, _then);
}

/// @nodoc

@_jsonSerializable
class _$AsyncStateInitial<Data, Error> extends AsyncStateInitial<Data, Error>
    with DiagnosticableTreeMixin {
  const _$AsyncStateInitial({final String? $type})
      : $type = $type ?? 'Initial',
        super._();

  factory _$AsyncStateInitial.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =>
      _$$AsyncStateInitialFromJson(json, fromJsonData, fromJsonError);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$Data, $Error>.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AsyncState<$Data, $Error>.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncStateInitial<Data, Error>);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Data data) data,
    required TResult Function(
            Error error, @StackTraceConverter() StackTrace stackTrace)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Data data)? data,
    TResult? Function(
            Error error, @StackTraceConverter() StackTrace stackTrace)?
        error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Data data)? data,
    TResult Function(Error error, @StackTraceConverter() StackTrace stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncStateInitial<Data, Error> value) initial,
    required TResult Function(AsyncStateLoading<Data, Error> value) loading,
    required TResult Function(AsyncStateData<Data, Error> value) data,
    required TResult Function(AsyncStateError<Data, Error> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncStateInitial<Data, Error> value)? initial,
    TResult? Function(AsyncStateLoading<Data, Error> value)? loading,
    TResult? Function(AsyncStateData<Data, Error> value)? data,
    TResult? Function(AsyncStateError<Data, Error> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncStateInitial<Data, Error> value)? initial,
    TResult Function(AsyncStateLoading<Data, Error> value)? loading,
    TResult Function(AsyncStateData<Data, Error> value)? data,
    TResult Function(AsyncStateError<Data, Error> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(
      Object? Function(Data) toJsonData, Object? Function(Error) toJsonError) {
    return _$$AsyncStateInitialToJson<Data, Error>(
        this, toJsonData, toJsonError);
  }
}

abstract class AsyncStateInitial<Data, Error> extends AsyncState<Data, Error> {
  const factory AsyncStateInitial() = _$AsyncStateInitial<Data, Error>;
  const AsyncStateInitial._() : super._();

  factory AsyncStateInitial.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =
      _$AsyncStateInitial<Data, Error>.fromJson;
}

/// @nodoc
abstract class _$$AsyncStateLoadingCopyWith<Data, Error, $Res> {
  factory _$$AsyncStateLoadingCopyWith(_$AsyncStateLoading<Data, Error> value,
          $Res Function(_$AsyncStateLoading<Data, Error>) then) =
      __$$AsyncStateLoadingCopyWithImpl<Data, Error, $Res>;
}

/// @nodoc
class __$$AsyncStateLoadingCopyWithImpl<Data, Error, $Res>
    extends _$AsyncStateCopyWithImpl<Data, Error, $Res,
        _$AsyncStateLoading<Data, Error>>
    implements _$$AsyncStateLoadingCopyWith<Data, Error, $Res> {
  __$$AsyncStateLoadingCopyWithImpl(_$AsyncStateLoading<Data, Error> _value,
      $Res Function(_$AsyncStateLoading<Data, Error>) _then)
      : super(_value, _then);
}

/// @nodoc

@_jsonSerializable
class _$AsyncStateLoading<Data, Error> extends AsyncStateLoading<Data, Error>
    with DiagnosticableTreeMixin {
  const _$AsyncStateLoading({final String? $type})
      : $type = $type ?? 'Loading',
        super._();

  factory _$AsyncStateLoading.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =>
      _$$AsyncStateLoadingFromJson(json, fromJsonData, fromJsonError);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$Data, $Error>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AsyncState<$Data, $Error>.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncStateLoading<Data, Error>);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Data data) data,
    required TResult Function(
            Error error, @StackTraceConverter() StackTrace stackTrace)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Data data)? data,
    TResult? Function(
            Error error, @StackTraceConverter() StackTrace stackTrace)?
        error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Data data)? data,
    TResult Function(Error error, @StackTraceConverter() StackTrace stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncStateInitial<Data, Error> value) initial,
    required TResult Function(AsyncStateLoading<Data, Error> value) loading,
    required TResult Function(AsyncStateData<Data, Error> value) data,
    required TResult Function(AsyncStateError<Data, Error> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncStateInitial<Data, Error> value)? initial,
    TResult? Function(AsyncStateLoading<Data, Error> value)? loading,
    TResult? Function(AsyncStateData<Data, Error> value)? data,
    TResult? Function(AsyncStateError<Data, Error> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncStateInitial<Data, Error> value)? initial,
    TResult Function(AsyncStateLoading<Data, Error> value)? loading,
    TResult Function(AsyncStateData<Data, Error> value)? data,
    TResult Function(AsyncStateError<Data, Error> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(
      Object? Function(Data) toJsonData, Object? Function(Error) toJsonError) {
    return _$$AsyncStateLoadingToJson<Data, Error>(
        this, toJsonData, toJsonError);
  }
}

abstract class AsyncStateLoading<Data, Error> extends AsyncState<Data, Error> {
  const factory AsyncStateLoading() = _$AsyncStateLoading<Data, Error>;
  const AsyncStateLoading._() : super._();

  factory AsyncStateLoading.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =
      _$AsyncStateLoading<Data, Error>.fromJson;
}

/// @nodoc
abstract class _$$AsyncStateDataCopyWith<Data, Error, $Res> {
  factory _$$AsyncStateDataCopyWith(_$AsyncStateData<Data, Error> value,
          $Res Function(_$AsyncStateData<Data, Error>) then) =
      __$$AsyncStateDataCopyWithImpl<Data, Error, $Res>;
  @useResult
  $Res call({Data data});
}

/// @nodoc
class __$$AsyncStateDataCopyWithImpl<Data, Error, $Res>
    extends _$AsyncStateCopyWithImpl<Data, Error, $Res,
        _$AsyncStateData<Data, Error>>
    implements _$$AsyncStateDataCopyWith<Data, Error, $Res> {
  __$$AsyncStateDataCopyWithImpl(_$AsyncStateData<Data, Error> _value,
      $Res Function(_$AsyncStateData<Data, Error>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AsyncStateData<Data, Error>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc

@_jsonSerializable
class _$AsyncStateData<Data, Error> extends AsyncStateData<Data, Error>
    with DiagnosticableTreeMixin {
  const _$AsyncStateData(this.data, {final String? $type})
      : $type = $type ?? 'Data',
        super._();

  factory _$AsyncStateData.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =>
      _$$AsyncStateDataFromJson(json, fromJsonData, fromJsonError);

  @override
  final Data data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$Data, $Error>.data(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AsyncState<$Data, $Error>.data'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncStateData<Data, Error> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncStateDataCopyWith<Data, Error, _$AsyncStateData<Data, Error>>
      get copyWith => __$$AsyncStateDataCopyWithImpl<Data, Error,
          _$AsyncStateData<Data, Error>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Data data) data,
    required TResult Function(
            Error error, @StackTraceConverter() StackTrace stackTrace)
        error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Data data)? data,
    TResult? Function(
            Error error, @StackTraceConverter() StackTrace stackTrace)?
        error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Data data)? data,
    TResult Function(Error error, @StackTraceConverter() StackTrace stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncStateInitial<Data, Error> value) initial,
    required TResult Function(AsyncStateLoading<Data, Error> value) loading,
    required TResult Function(AsyncStateData<Data, Error> value) data,
    required TResult Function(AsyncStateError<Data, Error> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncStateInitial<Data, Error> value)? initial,
    TResult? Function(AsyncStateLoading<Data, Error> value)? loading,
    TResult? Function(AsyncStateData<Data, Error> value)? data,
    TResult? Function(AsyncStateError<Data, Error> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncStateInitial<Data, Error> value)? initial,
    TResult Function(AsyncStateLoading<Data, Error> value)? loading,
    TResult Function(AsyncStateData<Data, Error> value)? data,
    TResult Function(AsyncStateError<Data, Error> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(
      Object? Function(Data) toJsonData, Object? Function(Error) toJsonError) {
    return _$$AsyncStateDataToJson<Data, Error>(this, toJsonData, toJsonError);
  }
}

abstract class AsyncStateData<Data, Error> extends AsyncState<Data, Error> {
  const factory AsyncStateData(final Data data) = _$AsyncStateData<Data, Error>;
  const AsyncStateData._() : super._();

  factory AsyncStateData.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =
      _$AsyncStateData<Data, Error>.fromJson;

  Data get data;
  @JsonKey(ignore: true)
  _$$AsyncStateDataCopyWith<Data, Error, _$AsyncStateData<Data, Error>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AsyncStateErrorCopyWith<Data, Error, $Res> {
  factory _$$AsyncStateErrorCopyWith(_$AsyncStateError<Data, Error> value,
          $Res Function(_$AsyncStateError<Data, Error>) then) =
      __$$AsyncStateErrorCopyWithImpl<Data, Error, $Res>;
  @useResult
  $Res call({Error error, @StackTraceConverter() StackTrace stackTrace});
}

/// @nodoc
class __$$AsyncStateErrorCopyWithImpl<Data, Error, $Res>
    extends _$AsyncStateCopyWithImpl<Data, Error, $Res,
        _$AsyncStateError<Data, Error>>
    implements _$$AsyncStateErrorCopyWith<Data, Error, $Res> {
  __$$AsyncStateErrorCopyWithImpl(_$AsyncStateError<Data, Error> _value,
      $Res Function(_$AsyncStateError<Data, Error>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = null,
  }) {
    return _then(_$AsyncStateError<Data, Error>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@_jsonSerializable
class _$AsyncStateError<Data, Error> extends AsyncStateError<Data, Error>
    with DiagnosticableTreeMixin {
  const _$AsyncStateError(this.error, @StackTraceConverter() this.stackTrace,
      {final String? $type})
      : $type = $type ?? 'Error',
        super._();

  factory _$AsyncStateError.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =>
      _$$AsyncStateErrorFromJson(json, fromJsonData, fromJsonError);

  @override
  final Error error;
  @override
  @StackTraceConverter()
  final StackTrace stackTrace;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AsyncState<$Data, $Error>.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AsyncState<$Data, $Error>.error'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncStateError<Data, Error> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncStateErrorCopyWith<Data, Error, _$AsyncStateError<Data, Error>>
      get copyWith => __$$AsyncStateErrorCopyWithImpl<Data, Error,
          _$AsyncStateError<Data, Error>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Data data) data,
    required TResult Function(
            Error error, @StackTraceConverter() StackTrace stackTrace)
        error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Data data)? data,
    TResult? Function(
            Error error, @StackTraceConverter() StackTrace stackTrace)?
        error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Data data)? data,
    TResult Function(Error error, @StackTraceConverter() StackTrace stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncStateInitial<Data, Error> value) initial,
    required TResult Function(AsyncStateLoading<Data, Error> value) loading,
    required TResult Function(AsyncStateData<Data, Error> value) data,
    required TResult Function(AsyncStateError<Data, Error> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncStateInitial<Data, Error> value)? initial,
    TResult? Function(AsyncStateLoading<Data, Error> value)? loading,
    TResult? Function(AsyncStateData<Data, Error> value)? data,
    TResult? Function(AsyncStateError<Data, Error> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncStateInitial<Data, Error> value)? initial,
    TResult Function(AsyncStateLoading<Data, Error> value)? loading,
    TResult Function(AsyncStateData<Data, Error> value)? data,
    TResult Function(AsyncStateError<Data, Error> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(
      Object? Function(Data) toJsonData, Object? Function(Error) toJsonError) {
    return _$$AsyncStateErrorToJson<Data, Error>(this, toJsonData, toJsonError);
  }
}

abstract class AsyncStateError<Data, Error> extends AsyncState<Data, Error> {
  const factory AsyncStateError(final Error error,
          @StackTraceConverter() final StackTrace stackTrace) =
      _$AsyncStateError<Data, Error>;
  const AsyncStateError._() : super._();

  factory AsyncStateError.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =
      _$AsyncStateError<Data, Error>.fromJson;

  Error get error;
  @StackTraceConverter()
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$AsyncStateErrorCopyWith<Data, Error, _$AsyncStateError<Data, Error>>
      get copyWith => throw _privateConstructorUsedError;
}
