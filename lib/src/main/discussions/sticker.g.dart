// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sticker _$$_StickerFromJson(Map<String, dynamic> json) => _$_Sticker(
      id: json['id'] as String,
      nickname: json['nickname'] as String,
      path: json['path'] as String,
      emoji: json['emoji'] as String,
    );

Map<String, dynamic> _$$_StickerToJson(_$_Sticker instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'path': instance.path,
      'emoji': instance.emoji,
    };

Map<String, dynamic> _$$_StickerCreateToJson(_$_StickerCreate instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'path': instance.path,
      'emoji': instance.emoji,
    };
