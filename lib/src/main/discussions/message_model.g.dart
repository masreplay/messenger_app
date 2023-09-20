// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageText _$$MessageTextFromJson(Map<String, dynamic> json) =>
    _$MessageText(
      idFrom: json['idFrom'] as String,
      idTo: json['idTo'] as String,
      timestamp:
          const TimeStampJsonConverter().fromJson(json['timestamp'] as String),
      content: json['content'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MessageTextToJson(_$MessageText instance) =>
    <String, dynamic>{
      'idFrom': instance.idFrom,
      'idTo': instance.idTo,
      'timestamp': const TimeStampJsonConverter().toJson(instance.timestamp),
      'content': instance.content,
      'type': instance.$type,
    };

_$MessageImage _$$MessageImageFromJson(Map<String, dynamic> json) =>
    _$MessageImage(
      idFrom: json['idFrom'] as String,
      idTo: json['idTo'] as String,
      timestamp:
          const TimeStampJsonConverter().fromJson(json['timestamp'] as String),
      imageUrl: json['imageUrl'] as String?,
      caption: json['caption'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MessageImageToJson(_$MessageImage instance) =>
    <String, dynamic>{
      'idFrom': instance.idFrom,
      'idTo': instance.idTo,
      'timestamp': const TimeStampJsonConverter().toJson(instance.timestamp),
      'imageUrl': instance.imageUrl,
      'caption': instance.caption,
      'type': instance.$type,
    };

_$MessageSticker _$$MessageStickerFromJson(Map<String, dynamic> json) =>
    _$MessageSticker(
      idFrom: json['idFrom'] as String,
      idTo: json['idTo'] as String,
      timestamp:
          const TimeStampJsonConverter().fromJson(json['timestamp'] as String),
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MessageStickerToJson(_$MessageSticker instance) =>
    <String, dynamic>{
      'idFrom': instance.idFrom,
      'idTo': instance.idTo,
      'timestamp': const TimeStampJsonConverter().toJson(instance.timestamp),
      'sticker': instance.sticker.toJson(),
      'type': instance.$type,
    };

_$MessageFallback _$$MessageFallbackFromJson(Map<String, dynamic> json) =>
    _$MessageFallback(
      idFrom: json['idFrom'] as String,
      idTo: json['idTo'] as String,
      timestamp:
          const TimeStampJsonConverter().fromJson(json['timestamp'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MessageFallbackToJson(_$MessageFallback instance) =>
    <String, dynamic>{
      'idFrom': instance.idFrom,
      'idTo': instance.idTo,
      'timestamp': const TimeStampJsonConverter().toJson(instance.timestamp),
      'type': instance.$type,
    };
