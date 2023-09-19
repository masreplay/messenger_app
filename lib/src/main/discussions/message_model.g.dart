// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageText _$$_MessageTextFromJson(Map<String, dynamic> json) =>
    _$_MessageText(
      idFrom: json['idFrom'] as String,
      idTo: json['idTo'] as String,
      timestamp:
          const TimeStampJsonConverter().fromJson(json['timestamp'] as String),
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_MessageTextToJson(_$_MessageText instance) =>
    <String, dynamic>{
      'idFrom': instance.idFrom,
      'idTo': instance.idTo,
      'timestamp': const TimeStampJsonConverter().toJson(instance.timestamp),
      'content': instance.content,
    };
