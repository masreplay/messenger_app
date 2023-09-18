// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StateInitial<Data, Error> _$$StateInitialFromJson<Data, Error>(
  Map<String, dynamic> json,
  Data Function(Object? json) fromJsonData,
  Error Function(Object? json) fromJsonError,
) =>
    _$StateInitial<Data, Error>(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$StateInitialToJson<Data, Error>(
  _$StateInitial<Data, Error> instance,
  Object? Function(Data value) toJsonData,
  Object? Function(Error value) toJsonError,
) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$StateLoading<Data, Error> _$$StateLoadingFromJson<Data, Error>(
  Map<String, dynamic> json,
  Data Function(Object? json) fromJsonData,
  Error Function(Object? json) fromJsonError,
) =>
    _$StateLoading<Data, Error>(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$StateLoadingToJson<Data, Error>(
  _$StateLoading<Data, Error> instance,
  Object? Function(Data value) toJsonData,
  Object? Function(Error value) toJsonError,
) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$StateData<Data, Error> _$$StateDataFromJson<Data, Error>(
  Map<String, dynamic> json,
  Data Function(Object? json) fromJsonData,
  Error Function(Object? json) fromJsonError,
) =>
    _$StateData<Data, Error>(
      fromJsonData(json['data']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$StateDataToJson<Data, Error>(
  _$StateData<Data, Error> instance,
  Object? Function(Data value) toJsonData,
  Object? Function(Error value) toJsonError,
) =>
    <String, dynamic>{
      'data': toJsonData(instance.data),
      'type': instance.$type,
    };

_$StateError<Data, Error> _$$StateErrorFromJson<Data, Error>(
  Map<String, dynamic> json,
  Data Function(Object? json) fromJsonData,
  Error Function(Object? json) fromJsonError,
) =>
    _$StateError<Data, Error>(
      fromJsonError(json['error']),
      const StackTraceConverter().fromJson(json['stackTrace'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$StateErrorToJson<Data, Error>(
  _$StateError<Data, Error> instance,
  Object? Function(Data value) toJsonData,
  Object? Function(Error value) toJsonError,
) =>
    <String, dynamic>{
      'error': toJsonError(instance.error),
      'stackTrace': const StackTraceConverter().toJson(instance.stackTrace),
      'type': instance.$type,
    };
