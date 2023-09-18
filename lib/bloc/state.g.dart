// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FutureStateInitial<Data, Error> _$$FutureStateInitialFromJson<Data, Error>(
  Map<String, dynamic> json,
  Data Function(Object? json) fromJsonData,
  Error Function(Object? json) fromJsonError,
) =>
    _$FutureStateInitial<Data, Error>(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FutureStateInitialToJson<Data, Error>(
  _$FutureStateInitial<Data, Error> instance,
  Object? Function(Data value) toJsonData,
  Object? Function(Error value) toJsonError,
) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$FutureStateLoading<Data, Error> _$$FutureStateLoadingFromJson<Data, Error>(
  Map<String, dynamic> json,
  Data Function(Object? json) fromJsonData,
  Error Function(Object? json) fromJsonError,
) =>
    _$FutureStateLoading<Data, Error>(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FutureStateLoadingToJson<Data, Error>(
  _$FutureStateLoading<Data, Error> instance,
  Object? Function(Data value) toJsonData,
  Object? Function(Error value) toJsonError,
) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$FutureStateData<Data, Error> _$$FutureStateDataFromJson<Data, Error>(
  Map<String, dynamic> json,
  Data Function(Object? json) fromJsonData,
  Error Function(Object? json) fromJsonError,
) =>
    _$FutureStateData<Data, Error>(
      fromJsonData(json['data']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FutureStateDataToJson<Data, Error>(
  _$FutureStateData<Data, Error> instance,
  Object? Function(Data value) toJsonData,
  Object? Function(Error value) toJsonError,
) =>
    <String, dynamic>{
      'data': toJsonData(instance.data),
      'type': instance.$type,
    };

_$FutureStateError<Data, Error> _$$FutureStateErrorFromJson<Data, Error>(
  Map<String, dynamic> json,
  Data Function(Object? json) fromJsonData,
  Error Function(Object? json) fromJsonError,
) =>
    _$FutureStateError<Data, Error>(
      fromJsonError(json['error']),
      const StackTraceConverter().fromJson(json['stackTrace'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FutureStateErrorToJson<Data, Error>(
  _$FutureStateError<Data, Error> instance,
  Object? Function(Data value) toJsonData,
  Object? Function(Error value) toJsonError,
) =>
    <String, dynamic>{
      'error': toJsonError(instance.error),
      'stackTrace': const StackTraceConverter().toJson(instance.stackTrace),
      'type': instance.$type,
    };
