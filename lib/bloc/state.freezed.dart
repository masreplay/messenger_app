// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FutureState<Data, Error> _$FutureStateFromJson<Data, Error>(
    Map<String, dynamic> json,
    Data Function(Object?) fromJsonData,
    Error Function(Object?) fromJsonError) {
  switch (json['type']) {
    case 'Initial':
      return FutureStateInitial<Data, Error>.fromJson(
          json, fromJsonData, fromJsonError);
    case 'Loading':
      return FutureStateLoading<Data, Error>.fromJson(
          json, fromJsonData, fromJsonError);
    case 'Data':
      return FutureStateData<Data, Error>.fromJson(
          json, fromJsonData, fromJsonError);
    case 'Error':
      return FutureStateError<Data, Error>.fromJson(
          json, fromJsonData, fromJsonError);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'FutureState', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$FutureState<Data, Error> {
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
    required TResult Function(FutureStateInitial<Data, Error> value) initial,
    required TResult Function(FutureStateLoading<Data, Error> value) loading,
    required TResult Function(FutureStateData<Data, Error> value) data,
    required TResult Function(FutureStateError<Data, Error> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FutureStateInitial<Data, Error> value)? initial,
    TResult? Function(FutureStateLoading<Data, Error> value)? loading,
    TResult? Function(FutureStateData<Data, Error> value)? data,
    TResult? Function(FutureStateError<Data, Error> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FutureStateInitial<Data, Error> value)? initial,
    TResult Function(FutureStateLoading<Data, Error> value)? loading,
    TResult Function(FutureStateData<Data, Error> value)? data,
    TResult Function(FutureStateError<Data, Error> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson(Object? Function(Data) toJsonData,
          Object? Function(Error) toJsonError) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FutureStateCopyWith<Data, Error, $Res> {
  factory $FutureStateCopyWith(FutureState<Data, Error> value,
          $Res Function(FutureState<Data, Error>) then) =
      _$FutureStateCopyWithImpl<Data, Error, $Res, FutureState<Data, Error>>;
}

/// @nodoc
class _$FutureStateCopyWithImpl<Data, Error, $Res,
        $Val extends FutureState<Data, Error>>
    implements $FutureStateCopyWith<Data, Error, $Res> {
  _$FutureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FutureStateInitialCopyWith<Data, Error, $Res> {
  factory _$$FutureStateInitialCopyWith(_$FutureStateInitial<Data, Error> value,
          $Res Function(_$FutureStateInitial<Data, Error>) then) =
      __$$FutureStateInitialCopyWithImpl<Data, Error, $Res>;
}

/// @nodoc
class __$$FutureStateInitialCopyWithImpl<Data, Error, $Res>
    extends _$FutureStateCopyWithImpl<Data, Error, $Res,
        _$FutureStateInitial<Data, Error>>
    implements _$$FutureStateInitialCopyWith<Data, Error, $Res> {
  __$$FutureStateInitialCopyWithImpl(_$FutureStateInitial<Data, Error> _value,
      $Res Function(_$FutureStateInitial<Data, Error>) _then)
      : super(_value, _then);
}

/// @nodoc

@_jsonSerializable
class _$FutureStateInitial<Data, Error>
    extends FutureStateInitial<Data, Error> {
  const _$FutureStateInitial({final String? $type})
      : $type = $type ?? 'Initial',
        super._();

  factory _$FutureStateInitial.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =>
      _$$FutureStateInitialFromJson(json, fromJsonData, fromJsonError);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FutureState<$Data, $Error>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FutureStateInitial<Data, Error>);
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
    required TResult Function(FutureStateInitial<Data, Error> value) initial,
    required TResult Function(FutureStateLoading<Data, Error> value) loading,
    required TResult Function(FutureStateData<Data, Error> value) data,
    required TResult Function(FutureStateError<Data, Error> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FutureStateInitial<Data, Error> value)? initial,
    TResult? Function(FutureStateLoading<Data, Error> value)? loading,
    TResult? Function(FutureStateData<Data, Error> value)? data,
    TResult? Function(FutureStateError<Data, Error> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FutureStateInitial<Data, Error> value)? initial,
    TResult Function(FutureStateLoading<Data, Error> value)? loading,
    TResult Function(FutureStateData<Data, Error> value)? data,
    TResult Function(FutureStateError<Data, Error> value)? error,
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
    return _$$FutureStateInitialToJson<Data, Error>(
        this, toJsonData, toJsonError);
  }
}

abstract class FutureStateInitial<Data, Error>
    extends FutureState<Data, Error> {
  const factory FutureStateInitial() = _$FutureStateInitial<Data, Error>;
  const FutureStateInitial._() : super._();

  factory FutureStateInitial.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =
      _$FutureStateInitial<Data, Error>.fromJson;
}

/// @nodoc
abstract class _$$FutureStateLoadingCopyWith<Data, Error, $Res> {
  factory _$$FutureStateLoadingCopyWith(_$FutureStateLoading<Data, Error> value,
          $Res Function(_$FutureStateLoading<Data, Error>) then) =
      __$$FutureStateLoadingCopyWithImpl<Data, Error, $Res>;
}

/// @nodoc
class __$$FutureStateLoadingCopyWithImpl<Data, Error, $Res>
    extends _$FutureStateCopyWithImpl<Data, Error, $Res,
        _$FutureStateLoading<Data, Error>>
    implements _$$FutureStateLoadingCopyWith<Data, Error, $Res> {
  __$$FutureStateLoadingCopyWithImpl(_$FutureStateLoading<Data, Error> _value,
      $Res Function(_$FutureStateLoading<Data, Error>) _then)
      : super(_value, _then);
}

/// @nodoc

@_jsonSerializable
class _$FutureStateLoading<Data, Error>
    extends FutureStateLoading<Data, Error> {
  const _$FutureStateLoading({final String? $type})
      : $type = $type ?? 'Loading',
        super._();

  factory _$FutureStateLoading.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =>
      _$$FutureStateLoadingFromJson(json, fromJsonData, fromJsonError);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FutureState<$Data, $Error>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FutureStateLoading<Data, Error>);
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
    required TResult Function(FutureStateInitial<Data, Error> value) initial,
    required TResult Function(FutureStateLoading<Data, Error> value) loading,
    required TResult Function(FutureStateData<Data, Error> value) data,
    required TResult Function(FutureStateError<Data, Error> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FutureStateInitial<Data, Error> value)? initial,
    TResult? Function(FutureStateLoading<Data, Error> value)? loading,
    TResult? Function(FutureStateData<Data, Error> value)? data,
    TResult? Function(FutureStateError<Data, Error> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FutureStateInitial<Data, Error> value)? initial,
    TResult Function(FutureStateLoading<Data, Error> value)? loading,
    TResult Function(FutureStateData<Data, Error> value)? data,
    TResult Function(FutureStateError<Data, Error> value)? error,
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
    return _$$FutureStateLoadingToJson<Data, Error>(
        this, toJsonData, toJsonError);
  }
}

abstract class FutureStateLoading<Data, Error>
    extends FutureState<Data, Error> {
  const factory FutureStateLoading() = _$FutureStateLoading<Data, Error>;
  const FutureStateLoading._() : super._();

  factory FutureStateLoading.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =
      _$FutureStateLoading<Data, Error>.fromJson;
}

/// @nodoc
abstract class _$$FutureStateDataCopyWith<Data, Error, $Res> {
  factory _$$FutureStateDataCopyWith(_$FutureStateData<Data, Error> value,
          $Res Function(_$FutureStateData<Data, Error>) then) =
      __$$FutureStateDataCopyWithImpl<Data, Error, $Res>;
  @useResult
  $Res call({Data data});
}

/// @nodoc
class __$$FutureStateDataCopyWithImpl<Data, Error, $Res>
    extends _$FutureStateCopyWithImpl<Data, Error, $Res,
        _$FutureStateData<Data, Error>>
    implements _$$FutureStateDataCopyWith<Data, Error, $Res> {
  __$$FutureStateDataCopyWithImpl(_$FutureStateData<Data, Error> _value,
      $Res Function(_$FutureStateData<Data, Error>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$FutureStateData<Data, Error>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc

@_jsonSerializable
class _$FutureStateData<Data, Error> extends FutureStateData<Data, Error> {
  const _$FutureStateData(this.data, {final String? $type})
      : $type = $type ?? 'Data',
        super._();

  factory _$FutureStateData.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =>
      _$$FutureStateDataFromJson(json, fromJsonData, fromJsonError);

  @override
  final Data data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FutureState<$Data, $Error>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FutureStateData<Data, Error> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FutureStateDataCopyWith<Data, Error, _$FutureStateData<Data, Error>>
      get copyWith => __$$FutureStateDataCopyWithImpl<Data, Error,
          _$FutureStateData<Data, Error>>(this, _$identity);

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
    required TResult Function(FutureStateInitial<Data, Error> value) initial,
    required TResult Function(FutureStateLoading<Data, Error> value) loading,
    required TResult Function(FutureStateData<Data, Error> value) data,
    required TResult Function(FutureStateError<Data, Error> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FutureStateInitial<Data, Error> value)? initial,
    TResult? Function(FutureStateLoading<Data, Error> value)? loading,
    TResult? Function(FutureStateData<Data, Error> value)? data,
    TResult? Function(FutureStateError<Data, Error> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FutureStateInitial<Data, Error> value)? initial,
    TResult Function(FutureStateLoading<Data, Error> value)? loading,
    TResult Function(FutureStateData<Data, Error> value)? data,
    TResult Function(FutureStateError<Data, Error> value)? error,
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
    return _$$FutureStateDataToJson<Data, Error>(this, toJsonData, toJsonError);
  }
}

abstract class FutureStateData<Data, Error> extends FutureState<Data, Error> {
  const factory FutureStateData(final Data data) =
      _$FutureStateData<Data, Error>;
  const FutureStateData._() : super._();

  factory FutureStateData.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =
      _$FutureStateData<Data, Error>.fromJson;

  Data get data;
  @JsonKey(ignore: true)
  _$$FutureStateDataCopyWith<Data, Error, _$FutureStateData<Data, Error>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FutureStateErrorCopyWith<Data, Error, $Res> {
  factory _$$FutureStateErrorCopyWith(_$FutureStateError<Data, Error> value,
          $Res Function(_$FutureStateError<Data, Error>) then) =
      __$$FutureStateErrorCopyWithImpl<Data, Error, $Res>;
  @useResult
  $Res call({Error error, @StackTraceConverter() StackTrace stackTrace});
}

/// @nodoc
class __$$FutureStateErrorCopyWithImpl<Data, Error, $Res>
    extends _$FutureStateCopyWithImpl<Data, Error, $Res,
        _$FutureStateError<Data, Error>>
    implements _$$FutureStateErrorCopyWith<Data, Error, $Res> {
  __$$FutureStateErrorCopyWithImpl(_$FutureStateError<Data, Error> _value,
      $Res Function(_$FutureStateError<Data, Error>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = null,
  }) {
    return _then(_$FutureStateError<Data, Error>(
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
class _$FutureStateError<Data, Error> extends FutureStateError<Data, Error> {
  const _$FutureStateError(this.error, @StackTraceConverter() this.stackTrace,
      {final String? $type})
      : $type = $type ?? 'Error',
        super._();

  factory _$FutureStateError.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =>
      _$$FutureStateErrorFromJson(json, fromJsonData, fromJsonError);

  @override
  final Error error;
  @override
  @StackTraceConverter()
  final StackTrace stackTrace;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'FutureState<$Data, $Error>.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FutureStateError<Data, Error> &&
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
  _$$FutureStateErrorCopyWith<Data, Error, _$FutureStateError<Data, Error>>
      get copyWith => __$$FutureStateErrorCopyWithImpl<Data, Error,
          _$FutureStateError<Data, Error>>(this, _$identity);

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
    required TResult Function(FutureStateInitial<Data, Error> value) initial,
    required TResult Function(FutureStateLoading<Data, Error> value) loading,
    required TResult Function(FutureStateData<Data, Error> value) data,
    required TResult Function(FutureStateError<Data, Error> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FutureStateInitial<Data, Error> value)? initial,
    TResult? Function(FutureStateLoading<Data, Error> value)? loading,
    TResult? Function(FutureStateData<Data, Error> value)? data,
    TResult? Function(FutureStateError<Data, Error> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FutureStateInitial<Data, Error> value)? initial,
    TResult Function(FutureStateLoading<Data, Error> value)? loading,
    TResult Function(FutureStateData<Data, Error> value)? data,
    TResult Function(FutureStateError<Data, Error> value)? error,
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
    return _$$FutureStateErrorToJson<Data, Error>(
        this, toJsonData, toJsonError);
  }
}

abstract class FutureStateError<Data, Error> extends FutureState<Data, Error> {
  const factory FutureStateError(final Error error,
          @StackTraceConverter() final StackTrace stackTrace) =
      _$FutureStateError<Data, Error>;
  const FutureStateError._() : super._();

  factory FutureStateError.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =
      _$FutureStateError<Data, Error>.fromJson;

  Error get error;
  @StackTraceConverter()
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$FutureStateErrorCopyWith<Data, Error, _$FutureStateError<Data, Error>>
      get copyWith => throw _privateConstructorUsedError;
}
