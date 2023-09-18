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

State<Data, Error> _$StateFromJson<Data, Error>(
    Map<String, dynamic> json,
    Data Function(Object?) fromJsonData,
    Error Function(Object?) fromJsonError) {
  switch (json['type']) {
    case 'Initial':
      return StateInitial<Data, Error>.fromJson(
          json, fromJsonData, fromJsonError);
    case 'Loading':
      return StateLoading<Data, Error>.fromJson(
          json, fromJsonData, fromJsonError);
    case 'Data':
      return StateData<Data, Error>.fromJson(json, fromJsonData, fromJsonError);
    case 'Error':
      return StateError<Data, Error>.fromJson(
          json, fromJsonData, fromJsonError);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'State', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$State<Data, Error> {
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
    required TResult Function(StateInitial<Data, Error> value) initial,
    required TResult Function(StateLoading<Data, Error> value) loading,
    required TResult Function(StateData<Data, Error> value) data,
    required TResult Function(StateError<Data, Error> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StateInitial<Data, Error> value)? initial,
    TResult? Function(StateLoading<Data, Error> value)? loading,
    TResult? Function(StateData<Data, Error> value)? data,
    TResult? Function(StateError<Data, Error> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateInitial<Data, Error> value)? initial,
    TResult Function(StateLoading<Data, Error> value)? loading,
    TResult Function(StateData<Data, Error> value)? data,
    TResult Function(StateError<Data, Error> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson(Object? Function(Data) toJsonData,
          Object? Function(Error) toJsonError) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCopyWith<Data, Error, $Res> {
  factory $StateCopyWith(
          State<Data, Error> value, $Res Function(State<Data, Error>) then) =
      _$StateCopyWithImpl<Data, Error, $Res, State<Data, Error>>;
}

/// @nodoc
class _$StateCopyWithImpl<Data, Error, $Res, $Val extends State<Data, Error>>
    implements $StateCopyWith<Data, Error, $Res> {
  _$StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StateInitialCopyWith<Data, Error, $Res> {
  factory _$$StateInitialCopyWith(_$StateInitial<Data, Error> value,
          $Res Function(_$StateInitial<Data, Error>) then) =
      __$$StateInitialCopyWithImpl<Data, Error, $Res>;
}

/// @nodoc
class __$$StateInitialCopyWithImpl<Data, Error, $Res>
    extends _$StateCopyWithImpl<Data, Error, $Res, _$StateInitial<Data, Error>>
    implements _$$StateInitialCopyWith<Data, Error, $Res> {
  __$$StateInitialCopyWithImpl(_$StateInitial<Data, Error> _value,
      $Res Function(_$StateInitial<Data, Error>) _then)
      : super(_value, _then);
}

/// @nodoc

@_jsonSerializable
class _$StateInitial<Data, Error> extends StateInitial<Data, Error> {
  const _$StateInitial({final String? $type})
      : $type = $type ?? 'Initial',
        super._();

  factory _$StateInitial.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =>
      _$$StateInitialFromJson(json, fromJsonData, fromJsonError);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'State<$Data, $Error>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateInitial<Data, Error>);
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
    required TResult Function(StateInitial<Data, Error> value) initial,
    required TResult Function(StateLoading<Data, Error> value) loading,
    required TResult Function(StateData<Data, Error> value) data,
    required TResult Function(StateError<Data, Error> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StateInitial<Data, Error> value)? initial,
    TResult? Function(StateLoading<Data, Error> value)? loading,
    TResult? Function(StateData<Data, Error> value)? data,
    TResult? Function(StateError<Data, Error> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateInitial<Data, Error> value)? initial,
    TResult Function(StateLoading<Data, Error> value)? loading,
    TResult Function(StateData<Data, Error> value)? data,
    TResult Function(StateError<Data, Error> value)? error,
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
    return _$$StateInitialToJson<Data, Error>(this, toJsonData, toJsonError);
  }
}

abstract class StateInitial<Data, Error> extends State<Data, Error> {
  const factory StateInitial() = _$StateInitial<Data, Error>;
  const StateInitial._() : super._();

  factory StateInitial.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =
      _$StateInitial<Data, Error>.fromJson;
}

/// @nodoc
abstract class _$$StateLoadingCopyWith<Data, Error, $Res> {
  factory _$$StateLoadingCopyWith(_$StateLoading<Data, Error> value,
          $Res Function(_$StateLoading<Data, Error>) then) =
      __$$StateLoadingCopyWithImpl<Data, Error, $Res>;
}

/// @nodoc
class __$$StateLoadingCopyWithImpl<Data, Error, $Res>
    extends _$StateCopyWithImpl<Data, Error, $Res, _$StateLoading<Data, Error>>
    implements _$$StateLoadingCopyWith<Data, Error, $Res> {
  __$$StateLoadingCopyWithImpl(_$StateLoading<Data, Error> _value,
      $Res Function(_$StateLoading<Data, Error>) _then)
      : super(_value, _then);
}

/// @nodoc

@_jsonSerializable
class _$StateLoading<Data, Error> extends StateLoading<Data, Error> {
  const _$StateLoading({final String? $type})
      : $type = $type ?? 'Loading',
        super._();

  factory _$StateLoading.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =>
      _$$StateLoadingFromJson(json, fromJsonData, fromJsonError);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'State<$Data, $Error>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateLoading<Data, Error>);
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
    required TResult Function(StateInitial<Data, Error> value) initial,
    required TResult Function(StateLoading<Data, Error> value) loading,
    required TResult Function(StateData<Data, Error> value) data,
    required TResult Function(StateError<Data, Error> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StateInitial<Data, Error> value)? initial,
    TResult? Function(StateLoading<Data, Error> value)? loading,
    TResult? Function(StateData<Data, Error> value)? data,
    TResult? Function(StateError<Data, Error> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateInitial<Data, Error> value)? initial,
    TResult Function(StateLoading<Data, Error> value)? loading,
    TResult Function(StateData<Data, Error> value)? data,
    TResult Function(StateError<Data, Error> value)? error,
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
    return _$$StateLoadingToJson<Data, Error>(this, toJsonData, toJsonError);
  }
}

abstract class StateLoading<Data, Error> extends State<Data, Error> {
  const factory StateLoading() = _$StateLoading<Data, Error>;
  const StateLoading._() : super._();

  factory StateLoading.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =
      _$StateLoading<Data, Error>.fromJson;
}

/// @nodoc
abstract class _$$StateDataCopyWith<Data, Error, $Res> {
  factory _$$StateDataCopyWith(_$StateData<Data, Error> value,
          $Res Function(_$StateData<Data, Error>) then) =
      __$$StateDataCopyWithImpl<Data, Error, $Res>;
  @useResult
  $Res call({Data data});
}

/// @nodoc
class __$$StateDataCopyWithImpl<Data, Error, $Res>
    extends _$StateCopyWithImpl<Data, Error, $Res, _$StateData<Data, Error>>
    implements _$$StateDataCopyWith<Data, Error, $Res> {
  __$$StateDataCopyWithImpl(_$StateData<Data, Error> _value,
      $Res Function(_$StateData<Data, Error>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$StateData<Data, Error>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc

@_jsonSerializable
class _$StateData<Data, Error> extends StateData<Data, Error> {
  const _$StateData(this.data, {final String? $type})
      : $type = $type ?? 'Data',
        super._();

  factory _$StateData.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =>
      _$$StateDataFromJson(json, fromJsonData, fromJsonError);

  @override
  final Data data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'State<$Data, $Error>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateData<Data, Error> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateDataCopyWith<Data, Error, _$StateData<Data, Error>> get copyWith =>
      __$$StateDataCopyWithImpl<Data, Error, _$StateData<Data, Error>>(
          this, _$identity);

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
    required TResult Function(StateInitial<Data, Error> value) initial,
    required TResult Function(StateLoading<Data, Error> value) loading,
    required TResult Function(StateData<Data, Error> value) data,
    required TResult Function(StateError<Data, Error> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StateInitial<Data, Error> value)? initial,
    TResult? Function(StateLoading<Data, Error> value)? loading,
    TResult? Function(StateData<Data, Error> value)? data,
    TResult? Function(StateError<Data, Error> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateInitial<Data, Error> value)? initial,
    TResult Function(StateLoading<Data, Error> value)? loading,
    TResult Function(StateData<Data, Error> value)? data,
    TResult Function(StateError<Data, Error> value)? error,
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
    return _$$StateDataToJson<Data, Error>(this, toJsonData, toJsonError);
  }
}

abstract class StateData<Data, Error> extends State<Data, Error> {
  const factory StateData(final Data data) = _$StateData<Data, Error>;
  const StateData._() : super._();

  factory StateData.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =
      _$StateData<Data, Error>.fromJson;

  Data get data;
  @JsonKey(ignore: true)
  _$$StateDataCopyWith<Data, Error, _$StateData<Data, Error>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StateErrorCopyWith<Data, Error, $Res> {
  factory _$$StateErrorCopyWith(_$StateError<Data, Error> value,
          $Res Function(_$StateError<Data, Error>) then) =
      __$$StateErrorCopyWithImpl<Data, Error, $Res>;
  @useResult
  $Res call({Error error, @StackTraceConverter() StackTrace stackTrace});
}

/// @nodoc
class __$$StateErrorCopyWithImpl<Data, Error, $Res>
    extends _$StateCopyWithImpl<Data, Error, $Res, _$StateError<Data, Error>>
    implements _$$StateErrorCopyWith<Data, Error, $Res> {
  __$$StateErrorCopyWithImpl(_$StateError<Data, Error> _value,
      $Res Function(_$StateError<Data, Error>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = null,
  }) {
    return _then(_$StateError<Data, Error>(
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
class _$StateError<Data, Error> extends StateError<Data, Error> {
  const _$StateError(this.error, @StackTraceConverter() this.stackTrace,
      {final String? $type})
      : $type = $type ?? 'Error',
        super._();

  factory _$StateError.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =>
      _$$StateErrorFromJson(json, fromJsonData, fromJsonError);

  @override
  final Error error;
  @override
  @StackTraceConverter()
  final StackTrace stackTrace;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'State<$Data, $Error>.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateError<Data, Error> &&
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
  _$$StateErrorCopyWith<Data, Error, _$StateError<Data, Error>> get copyWith =>
      __$$StateErrorCopyWithImpl<Data, Error, _$StateError<Data, Error>>(
          this, _$identity);

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
    required TResult Function(StateInitial<Data, Error> value) initial,
    required TResult Function(StateLoading<Data, Error> value) loading,
    required TResult Function(StateData<Data, Error> value) data,
    required TResult Function(StateError<Data, Error> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StateInitial<Data, Error> value)? initial,
    TResult? Function(StateLoading<Data, Error> value)? loading,
    TResult? Function(StateData<Data, Error> value)? data,
    TResult? Function(StateError<Data, Error> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateInitial<Data, Error> value)? initial,
    TResult Function(StateLoading<Data, Error> value)? loading,
    TResult Function(StateData<Data, Error> value)? data,
    TResult Function(StateError<Data, Error> value)? error,
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
    return _$$StateErrorToJson<Data, Error>(this, toJsonData, toJsonError);
  }
}

abstract class StateError<Data, Error> extends State<Data, Error> {
  const factory StateError(final Error error,
          @StackTraceConverter() final StackTrace stackTrace) =
      _$StateError<Data, Error>;
  const StateError._() : super._();

  factory StateError.fromJson(
          Map<String, dynamic> json,
          Data Function(Object?) fromJsonData,
          Error Function(Object?) fromJsonError) =
      _$StateError<Data, Error>.fromJson;

  Error get error;
  @StackTraceConverter()
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$StateErrorCopyWith<Data, Error, _$StateError<Data, Error>> get copyWith =>
      throw _privateConstructorUsedError;
}
