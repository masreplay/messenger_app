// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageMetaData _$$_MessageMetaDataFromJson(Map<String, dynamic> json) =>
    _$_MessageMetaData(
      idFrom: json['idFrom'] as String,
      idTo: json['idTo'] as String,
      timestamp:
          MessageMetaData._fromJsonTimestamp(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_MessageMetaDataToJson(_$_MessageMetaData instance) =>
    <String, dynamic>{
      'idFrom': instance.idFrom,
      'idTo': instance.idTo,
      'timestamp': MessageMetaData._toJsonTimestamp(instance.timestamp),
    };

_$MessageText _$$MessageTextFromJson(Map<String, dynamic> json) =>
    _$MessageText(
      metadata:
          MessageMetaData.fromJson(json['metadata'] as Map<String, dynamic>),
      content: json['content'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MessageTextToJson(_$MessageText instance) =>
    <String, dynamic>{
      'metadata': instance.metadata.toJson(),
      'content': instance.content,
      'type': instance.$type,
    };

_$MessageImage _$$MessageImageFromJson(Map<String, dynamic> json) =>
    _$MessageImage(
      metadata:
          MessageMetaData.fromJson(json['metadata'] as Map<String, dynamic>),
      imageUrl: json['imageUrl'] as String,
      caption: json['caption'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MessageImageToJson(_$MessageImage instance) =>
    <String, dynamic>{
      'metadata': instance.metadata.toJson(),
      'imageUrl': instance.imageUrl,
      'caption': instance.caption,
      'type': instance.$type,
    };

_$MessageSticker _$$MessageStickerFromJson(Map<String, dynamic> json) =>
    _$MessageSticker(
      metadata:
          MessageMetaData.fromJson(json['metadata'] as Map<String, dynamic>),
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MessageStickerToJson(_$MessageSticker instance) =>
    <String, dynamic>{
      'metadata': instance.metadata.toJson(),
      'sticker': instance.sticker.toJson(),
      'type': instance.$type,
    };

_$MessageFallback _$$MessageFallbackFromJson(Map<String, dynamic> json) =>
    _$MessageFallback(
      metadata:
          MessageMetaData.fromJson(json['metadata'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MessageFallbackToJson(_$MessageFallback instance) =>
    <String, dynamic>{
      'metadata': instance.metadata.toJson(),
      'type': instance.$type,
    };
