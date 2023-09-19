// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'async_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AsyncStateInitial<Data, Error> _$$AsyncStateInitialFromJson<Data, Error>(
  Map<String, dynamic> json,
  Data Function(Object? json) fromJsonData,
  Error Function(Object? json) fromJsonError,
) =>
    _$AsyncStateInitial<Data, Error>(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$AsyncStateInitialToJson<Data, Error>(
  _$AsyncStateInitial<Data, Error> instance,
  Object? Function(Data value) toJsonData,
  Object? Function(Error value) toJsonError,
) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$AsyncStateLoading<Data, Error> _$$AsyncStateLoadingFromJson<Data, Error>(
  Map<String, dynamic> json,
  Data Function(Object? json) fromJsonData,
  Error Function(Object? json) fromJsonError,
) =>
    _$AsyncStateLoading<Data, Error>(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$AsyncStateLoadingToJson<Data, Error>(
  _$AsyncStateLoading<Data, Error> instance,
  Object? Function(Data value) toJsonData,
  Object? Function(Error value) toJsonError,
) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$AsyncStateData<Data, Error> _$$AsyncStateDataFromJson<Data, Error>(
  Map<String, dynamic> json,
  Data Function(Object? json) fromJsonData,
  Error Function(Object? json) fromJsonError,
) =>
    _$AsyncStateData<Data, Error>(
      fromJsonData(json['data']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$AsyncStateDataToJson<Data, Error>(
  _$AsyncStateData<Data, Error> instance,
  Object? Function(Data value) toJsonData,
  Object? Function(Error value) toJsonError,
) =>
    <String, dynamic>{
      'data': toJsonData(instance.data),
      'type': instance.$type,
    };

_$AsyncStateError<Data, Error> _$$AsyncStateErrorFromJson<Data, Error>(
  Map<String, dynamic> json,
  Data Function(Object? json) fromJsonData,
  Error Function(Object? json) fromJsonError,
) =>
    _$AsyncStateError<Data, Error>(
      fromJsonError(json['error']),
      const StackTraceConverter().fromJson(json['stackTrace'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$AsyncStateErrorToJson<Data, Error>(
  _$AsyncStateError<Data, Error> instance,
  Object? Function(Data value) toJsonData,
  Object? Function(Error value) toJsonError,
) =>
    <String, dynamic>{
      'error': toJsonError(instance.error),
      'stackTrace': const StackTraceConverter().toJson(instance.stackTrace),
      'type': instance.$type,
    };
