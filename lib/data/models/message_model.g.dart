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
      id: json['id'] as String,
      metadata:
          MessageMetaData.fromJson(json['metadata'] as Map<String, dynamic>),
      content:
          MessageContentText.fromJson(json['content'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MessageTextToJson(_$MessageText instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metadata': instance.metadata.toJson(),
      'content': instance.content.toJson(),
      'type': instance.$type,
    };

_$MessageImage _$$MessageImageFromJson(Map<String, dynamic> json) =>
    _$MessageImage(
      id: json['id'] as String,
      metadata:
          MessageMetaData.fromJson(json['metadata'] as Map<String, dynamic>),
      content:
          MessageContentImage.fromJson(json['content'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MessageImageToJson(_$MessageImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metadata': instance.metadata.toJson(),
      'content': instance.content.toJson(),
      'type': instance.$type,
    };

_$MessageSticker _$$MessageStickerFromJson(Map<String, dynamic> json) =>
    _$MessageSticker(
      id: json['id'] as String,
      metadata:
          MessageMetaData.fromJson(json['metadata'] as Map<String, dynamic>),
      content: MessageContentSticker.fromJson(
          json['content'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MessageStickerToJson(_$MessageSticker instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metadata': instance.metadata.toJson(),
      'content': instance.content.toJson(),
      'type': instance.$type,
    };

_$MessageFallback _$$MessageFallbackFromJson(Map<String, dynamic> json) =>
    _$MessageFallback(
      id: json['id'] as String,
      metadata:
          MessageMetaData.fromJson(json['metadata'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MessageFallbackToJson(_$MessageFallback instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metadata': instance.metadata.toJson(),
      'type': instance.$type,
    };

Map<String, dynamic> _$$MessageAddTextToJson(_$MessageAddText instance) =>
    <String, dynamic>{
      'content': instance.content.toJson(),
      'metadata': instance.metadata.toJson(),
      'type': instance.$type,
    };

Map<String, dynamic> _$$MessageAddImageToJson(_$MessageAddImage instance) =>
    <String, dynamic>{
      'content': instance.content.toJson(),
      'metadata': instance.metadata.toJson(),
      'type': instance.$type,
    };

Map<String, dynamic> _$$MessageAddStickerToJson(_$MessageAddSticker instance) =>
    <String, dynamic>{
      'content': instance.content.toJson(),
      'metadata': instance.metadata.toJson(),
      'type': instance.$type,
    };

_$_MessageContentText _$$_MessageContentTextFromJson(
        Map<String, dynamic> json) =>
    _$_MessageContentText(
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_MessageContentTextToJson(
        _$_MessageContentText instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

_$_MessageContentImage _$$_MessageContentImageFromJson(
        Map<String, dynamic> json) =>
    _$_MessageContentImage(
      imageUrl: json['imageUrl'] as String,
      caption: json['caption'] as String?,
    );

Map<String, dynamic> _$$_MessageContentImageToJson(
        _$_MessageContentImage instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'caption': instance.caption,
    };

_$_MessageContentSticker _$$_MessageContentStickerFromJson(
        Map<String, dynamic> json) =>
    _$_MessageContentSticker(
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MessageContentStickerToJson(
        _$_MessageContentSticker instance) =>
    <String, dynamic>{
      'sticker': instance.sticker.toJson(),
    };
