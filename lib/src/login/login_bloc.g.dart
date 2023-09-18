// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginCubitExceptionWeakPassword _$$LoginCubitExceptionWeakPasswordFromJson(
        Map<String, dynamic> json) =>
    _$LoginCubitExceptionWeakPassword(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LoginCubitExceptionWeakPasswordToJson(
        _$LoginCubitExceptionWeakPassword instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$LoginCubitExceptionEmailAlreadyInUse
    _$$LoginCubitExceptionEmailAlreadyInUseFromJson(
            Map<String, dynamic> json) =>
        _$LoginCubitExceptionEmailAlreadyInUse(
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$LoginCubitExceptionEmailAlreadyInUseToJson(
        _$LoginCubitExceptionEmailAlreadyInUse instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$LoginCubitExceptionOther _$$LoginCubitExceptionOtherFromJson(
        Map<String, dynamic> json) =>
    _$LoginCubitExceptionOther(
      json['e'],
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LoginCubitExceptionOtherToJson(
        _$LoginCubitExceptionOther instance) =>
    <String, dynamic>{
      'e': instance.e,
      'type': instance.$type,
    };
