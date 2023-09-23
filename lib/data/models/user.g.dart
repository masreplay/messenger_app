// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_UserCreateToJson(_$_UserCreate instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'createdAt': fieldValueToJson(instance.createdAt),
      'avatar': instance.avatar,
      'name': instance.name,
    };

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      uid: json['uid'] as String,
      email: json['email'] as String,
      createdAt: const TimeStampJsonConverter()
          .fromJson(json['createdAt'] as Timestamp),
      avatar: json['avatar'] as String?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'createdAt': const TimeStampJsonConverter().toJson(instance.createdAt),
      'avatar': instance.avatar,
      'name': instance.name,
    };
