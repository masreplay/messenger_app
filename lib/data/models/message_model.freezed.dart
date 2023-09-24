// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageMetaData _$MessageMetaDataFromJson(Map<String, dynamic> json) {
  return _MessageMetaData.fromJson(json);
}

/// @nodoc
mixin _$MessageMetaData {
  String get idFrom => throw _privateConstructorUsedError;
  String get idTo => throw _privateConstructorUsedError;
  @JsonKey(
      toJson: MessageMetaData._toJsonTimestamp,
      fromJson: MessageMetaData._fromJsonTimestamp)
  DateTime get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageMetaDataCopyWith<MessageMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageMetaDataCopyWith<$Res> {
  factory $MessageMetaDataCopyWith(
          MessageMetaData value, $Res Function(MessageMetaData) then) =
      _$MessageMetaDataCopyWithImpl<$Res, MessageMetaData>;
  @useResult
  $Res call(
      {String idFrom,
      String idTo,
      @JsonKey(
          toJson: MessageMetaData._toJsonTimestamp,
          fromJson: MessageMetaData._fromJsonTimestamp)
      DateTime timestamp});
}

/// @nodoc
class _$MessageMetaDataCopyWithImpl<$Res, $Val extends MessageMetaData>
    implements $MessageMetaDataCopyWith<$Res> {
  _$MessageMetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFrom = null,
    Object? idTo = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      idFrom: null == idFrom
          ? _value.idFrom
          : idFrom // ignore: cast_nullable_to_non_nullable
              as String,
      idTo: null == idTo
          ? _value.idTo
          : idTo // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageMetaDataCopyWith<$Res>
    implements $MessageMetaDataCopyWith<$Res> {
  factory _$$_MessageMetaDataCopyWith(
          _$_MessageMetaData value, $Res Function(_$_MessageMetaData) then) =
      __$$_MessageMetaDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String idFrom,
      String idTo,
      @JsonKey(
          toJson: MessageMetaData._toJsonTimestamp,
          fromJson: MessageMetaData._fromJsonTimestamp)
      DateTime timestamp});
}

/// @nodoc
class __$$_MessageMetaDataCopyWithImpl<$Res>
    extends _$MessageMetaDataCopyWithImpl<$Res, _$_MessageMetaData>
    implements _$$_MessageMetaDataCopyWith<$Res> {
  __$$_MessageMetaDataCopyWithImpl(
      _$_MessageMetaData _value, $Res Function(_$_MessageMetaData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFrom = null,
    Object? idTo = null,
    Object? timestamp = null,
  }) {
    return _then(_$_MessageMetaData(
      idFrom: null == idFrom
          ? _value.idFrom
          : idFrom // ignore: cast_nullable_to_non_nullable
              as String,
      idTo: null == idTo
          ? _value.idTo
          : idTo // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@_jsonSerializable
class _$_MessageMetaData implements _MessageMetaData {
  const _$_MessageMetaData(
      {required this.idFrom,
      required this.idTo,
      @JsonKey(
          toJson: MessageMetaData._toJsonTimestamp,
          fromJson: MessageMetaData._fromJsonTimestamp)
      required this.timestamp});

  factory _$_MessageMetaData.fromJson(Map<String, dynamic> json) =>
      _$$_MessageMetaDataFromJson(json);

  @override
  final String idFrom;
  @override
  final String idTo;
  @override
  @JsonKey(
      toJson: MessageMetaData._toJsonTimestamp,
      fromJson: MessageMetaData._fromJsonTimestamp)
  final DateTime timestamp;

  @override
  String toString() {
    return 'MessageMetaData(idFrom: $idFrom, idTo: $idTo, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageMetaData &&
            (identical(other.idFrom, idFrom) || other.idFrom == idFrom) &&
            (identical(other.idTo, idTo) || other.idTo == idTo) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idFrom, idTo, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageMetaDataCopyWith<_$_MessageMetaData> get copyWith =>
      __$$_MessageMetaDataCopyWithImpl<_$_MessageMetaData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageMetaDataToJson(
      this,
    );
  }
}

abstract class _MessageMetaData implements MessageMetaData {
  const factory _MessageMetaData(
      {required final String idFrom,
      required final String idTo,
      @JsonKey(
          toJson: MessageMetaData._toJsonTimestamp,
          fromJson: MessageMetaData._fromJsonTimestamp)
      required final DateTime timestamp}) = _$_MessageMetaData;

  factory _MessageMetaData.fromJson(Map<String, dynamic> json) =
      _$_MessageMetaData.fromJson;

  @override
  String get idFrom;
  @override
  String get idTo;
  @override
  @JsonKey(
      toJson: MessageMetaData._toJsonTimestamp,
      fromJson: MessageMetaData._fromJsonTimestamp)
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_MessageMetaDataCopyWith<_$_MessageMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'text':
      return MessageText.fromJson(json);
    case 'image':
      return MessageImage.fromJson(json);
    case 'sticker':
      return MessageSticker.fromJson(json);

    default:
      return MessageFallback.fromJson(json);
  }
}

/// @nodoc
mixin _$Message {
  String get id => throw _privateConstructorUsedError;
  MessageMetaData get metadata => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, MessageMetaData metadata, MessageContentText content)
        text,
    required TResult Function(
            String id, MessageMetaData metadata, MessageContentImage content)
        image,
    required TResult Function(
            String id, MessageMetaData metadata, MessageContentSticker content)
        sticker,
    required TResult Function(String id, MessageMetaData metadata) fallback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id, MessageMetaData metadata, MessageContentText content)?
        text,
    TResult? Function(
            String id, MessageMetaData metadata, MessageContentImage content)?
        image,
    TResult? Function(
            String id, MessageMetaData metadata, MessageContentSticker content)?
        sticker,
    TResult? Function(String id, MessageMetaData metadata)? fallback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id, MessageMetaData metadata, MessageContentText content)?
        text,
    TResult Function(
            String id, MessageMetaData metadata, MessageContentImage content)?
        image,
    TResult Function(
            String id, MessageMetaData metadata, MessageContentSticker content)?
        sticker,
    TResult Function(String id, MessageMetaData metadata)? fallback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageText value) text,
    required TResult Function(MessageImage value) image,
    required TResult Function(MessageSticker value) sticker,
    required TResult Function(MessageFallback value) fallback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageText value)? text,
    TResult? Function(MessageImage value)? image,
    TResult? Function(MessageSticker value)? sticker,
    TResult? Function(MessageFallback value)? fallback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageText value)? text,
    TResult Function(MessageImage value)? image,
    TResult Function(MessageSticker value)? sticker,
    TResult Function(MessageFallback value)? fallback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({String id, MessageMetaData metadata});

  $MessageMetaDataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MessageMetaData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageMetaDataCopyWith<$Res> get metadata {
    return $MessageMetaDataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageTextCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageTextCopyWith(
          _$MessageText value, $Res Function(_$MessageText) then) =
      __$$MessageTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, MessageMetaData metadata, MessageContentText content});

  @override
  $MessageMetaDataCopyWith<$Res> get metadata;
  $MessageContentTextCopyWith<$Res> get content;
}

/// @nodoc
class __$$MessageTextCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageText>
    implements _$$MessageTextCopyWith<$Res> {
  __$$MessageTextCopyWithImpl(
      _$MessageText _value, $Res Function(_$MessageText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? metadata = null,
    Object? content = null,
  }) {
    return _then(_$MessageText(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MessageMetaData,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as MessageContentText,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageContentTextCopyWith<$Res> get content {
    return $MessageContentTextCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc

@_jsonSerializable
class _$MessageText extends MessageText {
  const _$MessageText(
      {required this.id,
      required this.metadata,
      required this.content,
      final String? $type})
      : $type = $type ?? 'text',
        super._();

  factory _$MessageText.fromJson(Map<String, dynamic> json) =>
      _$$MessageTextFromJson(json);

  @override
  final String id;
  @override
  final MessageMetaData metadata;
  @override
  final MessageContentText content;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.text(id: $id, metadata: $metadata, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageText &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, metadata, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageTextCopyWith<_$MessageText> get copyWith =>
      __$$MessageTextCopyWithImpl<_$MessageText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, MessageMetaData metadata, MessageContentText content)
        text,
    required TResult Function(
            String id, MessageMetaData metadata, MessageContentImage content)
        image,
    required TResult Function(
            String id, MessageMetaData metadata, MessageContentSticker content)
        sticker,
    required TResult Function(String id, MessageMetaData metadata) fallback,
  }) {
    return text(id, metadata, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id, MessageMetaData metadata, MessageContentText content)?
        text,
    TResult? Function(
            String id, MessageMetaData metadata, MessageContentImage content)?
        image,
    TResult? Function(
            String id, MessageMetaData metadata, MessageContentSticker content)?
        sticker,
    TResult? Function(String id, MessageMetaData metadata)? fallback,
  }) {
    return text?.call(id, metadata, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id, MessageMetaData metadata, MessageContentText content)?
        text,
    TResult Function(
            String id, MessageMetaData metadata, MessageContentImage content)?
        image,
    TResult Function(
            String id, MessageMetaData metadata, MessageContentSticker content)?
        sticker,
    TResult Function(String id, MessageMetaData metadata)? fallback,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(id, metadata, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageText value) text,
    required TResult Function(MessageImage value) image,
    required TResult Function(MessageSticker value) sticker,
    required TResult Function(MessageFallback value) fallback,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageText value)? text,
    TResult? Function(MessageImage value)? image,
    TResult? Function(MessageSticker value)? sticker,
    TResult? Function(MessageFallback value)? fallback,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageText value)? text,
    TResult Function(MessageImage value)? image,
    TResult Function(MessageSticker value)? sticker,
    TResult Function(MessageFallback value)? fallback,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageTextToJson(
      this,
    );
  }
}

abstract class MessageText extends Message {
  const factory MessageText(
      {required final String id,
      required final MessageMetaData metadata,
      required final MessageContentText content}) = _$MessageText;
  const MessageText._() : super._();

  factory MessageText.fromJson(Map<String, dynamic> json) =
      _$MessageText.fromJson;

  @override
  String get id;
  @override
  MessageMetaData get metadata;
  MessageContentText get content;
  @override
  @JsonKey(ignore: true)
  _$$MessageTextCopyWith<_$MessageText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageImageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImageCopyWith(
          _$MessageImage value, $Res Function(_$MessageImage) then) =
      __$$MessageImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, MessageMetaData metadata, MessageContentImage content});

  @override
  $MessageMetaDataCopyWith<$Res> get metadata;
  $MessageContentImageCopyWith<$Res> get content;
}

/// @nodoc
class __$$MessageImageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImage>
    implements _$$MessageImageCopyWith<$Res> {
  __$$MessageImageCopyWithImpl(
      _$MessageImage _value, $Res Function(_$MessageImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? metadata = null,
    Object? content = null,
  }) {
    return _then(_$MessageImage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MessageMetaData,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as MessageContentImage,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageContentImageCopyWith<$Res> get content {
    return $MessageContentImageCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc

@_jsonSerializable
class _$MessageImage extends MessageImage {
  const _$MessageImage(
      {required this.id,
      required this.metadata,
      required this.content,
      final String? $type})
      : $type = $type ?? 'image',
        super._();

  factory _$MessageImage.fromJson(Map<String, dynamic> json) =>
      _$$MessageImageFromJson(json);

  @override
  final String id;
  @override
  final MessageMetaData metadata;
  @override
  final MessageContentImage content;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.image(id: $id, metadata: $metadata, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, metadata, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImageCopyWith<_$MessageImage> get copyWith =>
      __$$MessageImageCopyWithImpl<_$MessageImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, MessageMetaData metadata, MessageContentText content)
        text,
    required TResult Function(
            String id, MessageMetaData metadata, MessageContentImage content)
        image,
    required TResult Function(
            String id, MessageMetaData metadata, MessageContentSticker content)
        sticker,
    required TResult Function(String id, MessageMetaData metadata) fallback,
  }) {
    return image(id, metadata, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id, MessageMetaData metadata, MessageContentText content)?
        text,
    TResult? Function(
            String id, MessageMetaData metadata, MessageContentImage content)?
        image,
    TResult? Function(
            String id, MessageMetaData metadata, MessageContentSticker content)?
        sticker,
    TResult? Function(String id, MessageMetaData metadata)? fallback,
  }) {
    return image?.call(id, metadata, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id, MessageMetaData metadata, MessageContentText content)?
        text,
    TResult Function(
            String id, MessageMetaData metadata, MessageContentImage content)?
        image,
    TResult Function(
            String id, MessageMetaData metadata, MessageContentSticker content)?
        sticker,
    TResult Function(String id, MessageMetaData metadata)? fallback,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(id, metadata, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageText value) text,
    required TResult Function(MessageImage value) image,
    required TResult Function(MessageSticker value) sticker,
    required TResult Function(MessageFallback value) fallback,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageText value)? text,
    TResult? Function(MessageImage value)? image,
    TResult? Function(MessageSticker value)? sticker,
    TResult? Function(MessageFallback value)? fallback,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageText value)? text,
    TResult Function(MessageImage value)? image,
    TResult Function(MessageSticker value)? sticker,
    TResult Function(MessageFallback value)? fallback,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImageToJson(
      this,
    );
  }
}

abstract class MessageImage extends Message {
  const factory MessageImage(
      {required final String id,
      required final MessageMetaData metadata,
      required final MessageContentImage content}) = _$MessageImage;
  const MessageImage._() : super._();

  factory MessageImage.fromJson(Map<String, dynamic> json) =
      _$MessageImage.fromJson;

  @override
  String get id;
  @override
  MessageMetaData get metadata;
  MessageContentImage get content;
  @override
  @JsonKey(ignore: true)
  _$$MessageImageCopyWith<_$MessageImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageStickerCopyWith<$Res>
    implements $MessageCopyWith<$Res> {
  factory _$$MessageStickerCopyWith(
          _$MessageSticker value, $Res Function(_$MessageSticker) then) =
      __$$MessageStickerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, MessageMetaData metadata, MessageContentSticker content});

  @override
  $MessageMetaDataCopyWith<$Res> get metadata;
  $MessageContentStickerCopyWith<$Res> get content;
}

/// @nodoc
class __$$MessageStickerCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageSticker>
    implements _$$MessageStickerCopyWith<$Res> {
  __$$MessageStickerCopyWithImpl(
      _$MessageSticker _value, $Res Function(_$MessageSticker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? metadata = null,
    Object? content = null,
  }) {
    return _then(_$MessageSticker(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MessageMetaData,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as MessageContentSticker,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageContentStickerCopyWith<$Res> get content {
    return $MessageContentStickerCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc

@_jsonSerializable
class _$MessageSticker extends MessageSticker {
  const _$MessageSticker(
      {required this.id,
      required this.metadata,
      required this.content,
      final String? $type})
      : $type = $type ?? 'sticker',
        super._();

  factory _$MessageSticker.fromJson(Map<String, dynamic> json) =>
      _$$MessageStickerFromJson(json);

  @override
  final String id;
  @override
  final MessageMetaData metadata;
  @override
  final MessageContentSticker content;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.sticker(id: $id, metadata: $metadata, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSticker &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, metadata, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageStickerCopyWith<_$MessageSticker> get copyWith =>
      __$$MessageStickerCopyWithImpl<_$MessageSticker>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, MessageMetaData metadata, MessageContentText content)
        text,
    required TResult Function(
            String id, MessageMetaData metadata, MessageContentImage content)
        image,
    required TResult Function(
            String id, MessageMetaData metadata, MessageContentSticker content)
        sticker,
    required TResult Function(String id, MessageMetaData metadata) fallback,
  }) {
    return sticker(id, metadata, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id, MessageMetaData metadata, MessageContentText content)?
        text,
    TResult? Function(
            String id, MessageMetaData metadata, MessageContentImage content)?
        image,
    TResult? Function(
            String id, MessageMetaData metadata, MessageContentSticker content)?
        sticker,
    TResult? Function(String id, MessageMetaData metadata)? fallback,
  }) {
    return sticker?.call(id, metadata, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id, MessageMetaData metadata, MessageContentText content)?
        text,
    TResult Function(
            String id, MessageMetaData metadata, MessageContentImage content)?
        image,
    TResult Function(
            String id, MessageMetaData metadata, MessageContentSticker content)?
        sticker,
    TResult Function(String id, MessageMetaData metadata)? fallback,
    required TResult orElse(),
  }) {
    if (sticker != null) {
      return sticker(id, metadata, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageText value) text,
    required TResult Function(MessageImage value) image,
    required TResult Function(MessageSticker value) sticker,
    required TResult Function(MessageFallback value) fallback,
  }) {
    return sticker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageText value)? text,
    TResult? Function(MessageImage value)? image,
    TResult? Function(MessageSticker value)? sticker,
    TResult? Function(MessageFallback value)? fallback,
  }) {
    return sticker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageText value)? text,
    TResult Function(MessageImage value)? image,
    TResult Function(MessageSticker value)? sticker,
    TResult Function(MessageFallback value)? fallback,
    required TResult orElse(),
  }) {
    if (sticker != null) {
      return sticker(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageStickerToJson(
      this,
    );
  }
}

abstract class MessageSticker extends Message {
  const factory MessageSticker(
      {required final String id,
      required final MessageMetaData metadata,
      required final MessageContentSticker content}) = _$MessageSticker;
  const MessageSticker._() : super._();

  factory MessageSticker.fromJson(Map<String, dynamic> json) =
      _$MessageSticker.fromJson;

  @override
  String get id;
  @override
  MessageMetaData get metadata;
  MessageContentSticker get content;
  @override
  @JsonKey(ignore: true)
  _$$MessageStickerCopyWith<_$MessageSticker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageFallbackCopyWith<$Res>
    implements $MessageCopyWith<$Res> {
  factory _$$MessageFallbackCopyWith(
          _$MessageFallback value, $Res Function(_$MessageFallback) then) =
      __$$MessageFallbackCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, MessageMetaData metadata});

  @override
  $MessageMetaDataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$MessageFallbackCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageFallback>
    implements _$$MessageFallbackCopyWith<$Res> {
  __$$MessageFallbackCopyWithImpl(
      _$MessageFallback _value, $Res Function(_$MessageFallback) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? metadata = null,
  }) {
    return _then(_$MessageFallback(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MessageMetaData,
    ));
  }
}

/// @nodoc

@_jsonSerializable
class _$MessageFallback extends MessageFallback {
  const _$MessageFallback(
      {required this.id, required this.metadata, final String? $type})
      : $type = $type ?? 'fallback',
        super._();

  factory _$MessageFallback.fromJson(Map<String, dynamic> json) =>
      _$$MessageFallbackFromJson(json);

  @override
  final String id;
  @override
  final MessageMetaData metadata;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.fallback(id: $id, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageFallback &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageFallbackCopyWith<_$MessageFallback> get copyWith =>
      __$$MessageFallbackCopyWithImpl<_$MessageFallback>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, MessageMetaData metadata, MessageContentText content)
        text,
    required TResult Function(
            String id, MessageMetaData metadata, MessageContentImage content)
        image,
    required TResult Function(
            String id, MessageMetaData metadata, MessageContentSticker content)
        sticker,
    required TResult Function(String id, MessageMetaData metadata) fallback,
  }) {
    return fallback(id, metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id, MessageMetaData metadata, MessageContentText content)?
        text,
    TResult? Function(
            String id, MessageMetaData metadata, MessageContentImage content)?
        image,
    TResult? Function(
            String id, MessageMetaData metadata, MessageContentSticker content)?
        sticker,
    TResult? Function(String id, MessageMetaData metadata)? fallback,
  }) {
    return fallback?.call(id, metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id, MessageMetaData metadata, MessageContentText content)?
        text,
    TResult Function(
            String id, MessageMetaData metadata, MessageContentImage content)?
        image,
    TResult Function(
            String id, MessageMetaData metadata, MessageContentSticker content)?
        sticker,
    TResult Function(String id, MessageMetaData metadata)? fallback,
    required TResult orElse(),
  }) {
    if (fallback != null) {
      return fallback(id, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageText value) text,
    required TResult Function(MessageImage value) image,
    required TResult Function(MessageSticker value) sticker,
    required TResult Function(MessageFallback value) fallback,
  }) {
    return fallback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageText value)? text,
    TResult? Function(MessageImage value)? image,
    TResult? Function(MessageSticker value)? sticker,
    TResult? Function(MessageFallback value)? fallback,
  }) {
    return fallback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageText value)? text,
    TResult Function(MessageImage value)? image,
    TResult Function(MessageSticker value)? sticker,
    TResult Function(MessageFallback value)? fallback,
    required TResult orElse(),
  }) {
    if (fallback != null) {
      return fallback(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageFallbackToJson(
      this,
    );
  }
}

abstract class MessageFallback extends Message {
  const factory MessageFallback(
      {required final String id,
      required final MessageMetaData metadata}) = _$MessageFallback;
  const MessageFallback._() : super._();

  factory MessageFallback.fromJson(Map<String, dynamic> json) =
      _$MessageFallback.fromJson;

  @override
  String get id;
  @override
  MessageMetaData get metadata;
  @override
  @JsonKey(ignore: true)
  _$$MessageFallbackCopyWith<_$MessageFallback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageAdd {
  Object get content => throw _privateConstructorUsedError;
  MessageMetaData get metadata => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MessageContentText content, MessageMetaData metadata)
        text,
    required TResult Function(
            MessageContentImage content, MessageMetaData metadata)
        image,
    required TResult Function(
            MessageContentSticker content, MessageMetaData metadata)
        sticker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageContentText content, MessageMetaData metadata)?
        text,
    TResult? Function(MessageContentImage content, MessageMetaData metadata)?
        image,
    TResult? Function(MessageContentSticker content, MessageMetaData metadata)?
        sticker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageContentText content, MessageMetaData metadata)?
        text,
    TResult Function(MessageContentImage content, MessageMetaData metadata)?
        image,
    TResult Function(MessageContentSticker content, MessageMetaData metadata)?
        sticker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageAddText value) text,
    required TResult Function(MessageAddImage value) image,
    required TResult Function(MessageAddSticker value) sticker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageAddText value)? text,
    TResult? Function(MessageAddImage value)? image,
    TResult? Function(MessageAddSticker value)? sticker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageAddText value)? text,
    TResult Function(MessageAddImage value)? image,
    TResult Function(MessageAddSticker value)? sticker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageAddCopyWith<MessageAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageAddCopyWith<$Res> {
  factory $MessageAddCopyWith(
          MessageAdd value, $Res Function(MessageAdd) then) =
      _$MessageAddCopyWithImpl<$Res, MessageAdd>;
  @useResult
  $Res call({MessageMetaData metadata});

  $MessageMetaDataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$MessageAddCopyWithImpl<$Res, $Val extends MessageAdd>
    implements $MessageAddCopyWith<$Res> {
  _$MessageAddCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MessageMetaData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageMetaDataCopyWith<$Res> get metadata {
    return $MessageMetaDataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageAddTextCopyWith<$Res>
    implements $MessageAddCopyWith<$Res> {
  factory _$$MessageAddTextCopyWith(
          _$MessageAddText value, $Res Function(_$MessageAddText) then) =
      __$$MessageAddTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MessageContentText content, MessageMetaData metadata});

  $MessageContentTextCopyWith<$Res> get content;
  @override
  $MessageMetaDataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$MessageAddTextCopyWithImpl<$Res>
    extends _$MessageAddCopyWithImpl<$Res, _$MessageAddText>
    implements _$$MessageAddTextCopyWith<$Res> {
  __$$MessageAddTextCopyWithImpl(
      _$MessageAddText _value, $Res Function(_$MessageAddText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? metadata = null,
  }) {
    return _then(_$MessageAddText(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as MessageContentText,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MessageMetaData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageContentTextCopyWith<$Res> get content {
    return $MessageContentTextCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc

@_addJsonSerializable
class _$MessageAddText extends MessageAddText {
  const _$MessageAddText(
      {required this.content, required this.metadata, final String? $type})
      : $type = $type ?? 'text',
        super._();

  @override
  final MessageContentText content;
  @override
  final MessageMetaData metadata;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MessageAdd.text(content: $content, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageAddText &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageAddTextCopyWith<_$MessageAddText> get copyWith =>
      __$$MessageAddTextCopyWithImpl<_$MessageAddText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MessageContentText content, MessageMetaData metadata)
        text,
    required TResult Function(
            MessageContentImage content, MessageMetaData metadata)
        image,
    required TResult Function(
            MessageContentSticker content, MessageMetaData metadata)
        sticker,
  }) {
    return text(content, metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageContentText content, MessageMetaData metadata)?
        text,
    TResult? Function(MessageContentImage content, MessageMetaData metadata)?
        image,
    TResult? Function(MessageContentSticker content, MessageMetaData metadata)?
        sticker,
  }) {
    return text?.call(content, metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageContentText content, MessageMetaData metadata)?
        text,
    TResult Function(MessageContentImage content, MessageMetaData metadata)?
        image,
    TResult Function(MessageContentSticker content, MessageMetaData metadata)?
        sticker,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(content, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageAddText value) text,
    required TResult Function(MessageAddImage value) image,
    required TResult Function(MessageAddSticker value) sticker,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageAddText value)? text,
    TResult? Function(MessageAddImage value)? image,
    TResult? Function(MessageAddSticker value)? sticker,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageAddText value)? text,
    TResult Function(MessageAddImage value)? image,
    TResult Function(MessageAddSticker value)? sticker,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageAddTextToJson(
      this,
    );
  }
}

abstract class MessageAddText extends MessageAdd {
  const factory MessageAddText(
      {required final MessageContentText content,
      required final MessageMetaData metadata}) = _$MessageAddText;
  const MessageAddText._() : super._();

  @override
  MessageContentText get content;
  @override
  MessageMetaData get metadata;
  @override
  @JsonKey(ignore: true)
  _$$MessageAddTextCopyWith<_$MessageAddText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageAddImageCopyWith<$Res>
    implements $MessageAddCopyWith<$Res> {
  factory _$$MessageAddImageCopyWith(
          _$MessageAddImage value, $Res Function(_$MessageAddImage) then) =
      __$$MessageAddImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MessageContentImage content, MessageMetaData metadata});

  $MessageContentImageCopyWith<$Res> get content;
  @override
  $MessageMetaDataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$MessageAddImageCopyWithImpl<$Res>
    extends _$MessageAddCopyWithImpl<$Res, _$MessageAddImage>
    implements _$$MessageAddImageCopyWith<$Res> {
  __$$MessageAddImageCopyWithImpl(
      _$MessageAddImage _value, $Res Function(_$MessageAddImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? metadata = null,
  }) {
    return _then(_$MessageAddImage(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as MessageContentImage,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MessageMetaData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageContentImageCopyWith<$Res> get content {
    return $MessageContentImageCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc

@_addJsonSerializable
class _$MessageAddImage extends MessageAddImage {
  const _$MessageAddImage(
      {required this.content, required this.metadata, final String? $type})
      : $type = $type ?? 'image',
        super._();

  @override
  final MessageContentImage content;
  @override
  final MessageMetaData metadata;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MessageAdd.image(content: $content, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageAddImage &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageAddImageCopyWith<_$MessageAddImage> get copyWith =>
      __$$MessageAddImageCopyWithImpl<_$MessageAddImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MessageContentText content, MessageMetaData metadata)
        text,
    required TResult Function(
            MessageContentImage content, MessageMetaData metadata)
        image,
    required TResult Function(
            MessageContentSticker content, MessageMetaData metadata)
        sticker,
  }) {
    return image(content, metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageContentText content, MessageMetaData metadata)?
        text,
    TResult? Function(MessageContentImage content, MessageMetaData metadata)?
        image,
    TResult? Function(MessageContentSticker content, MessageMetaData metadata)?
        sticker,
  }) {
    return image?.call(content, metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageContentText content, MessageMetaData metadata)?
        text,
    TResult Function(MessageContentImage content, MessageMetaData metadata)?
        image,
    TResult Function(MessageContentSticker content, MessageMetaData metadata)?
        sticker,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(content, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageAddText value) text,
    required TResult Function(MessageAddImage value) image,
    required TResult Function(MessageAddSticker value) sticker,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageAddText value)? text,
    TResult? Function(MessageAddImage value)? image,
    TResult? Function(MessageAddSticker value)? sticker,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageAddText value)? text,
    TResult Function(MessageAddImage value)? image,
    TResult Function(MessageAddSticker value)? sticker,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageAddImageToJson(
      this,
    );
  }
}

abstract class MessageAddImage extends MessageAdd {
  const factory MessageAddImage(
      {required final MessageContentImage content,
      required final MessageMetaData metadata}) = _$MessageAddImage;
  const MessageAddImage._() : super._();

  @override
  MessageContentImage get content;
  @override
  MessageMetaData get metadata;
  @override
  @JsonKey(ignore: true)
  _$$MessageAddImageCopyWith<_$MessageAddImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageAddStickerCopyWith<$Res>
    implements $MessageAddCopyWith<$Res> {
  factory _$$MessageAddStickerCopyWith(
          _$MessageAddSticker value, $Res Function(_$MessageAddSticker) then) =
      __$$MessageAddStickerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MessageContentSticker content, MessageMetaData metadata});

  $MessageContentStickerCopyWith<$Res> get content;
  @override
  $MessageMetaDataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$MessageAddStickerCopyWithImpl<$Res>
    extends _$MessageAddCopyWithImpl<$Res, _$MessageAddSticker>
    implements _$$MessageAddStickerCopyWith<$Res> {
  __$$MessageAddStickerCopyWithImpl(
      _$MessageAddSticker _value, $Res Function(_$MessageAddSticker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? metadata = null,
  }) {
    return _then(_$MessageAddSticker(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as MessageContentSticker,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MessageMetaData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageContentStickerCopyWith<$Res> get content {
    return $MessageContentStickerCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc

@_addJsonSerializable
class _$MessageAddSticker extends MessageAddSticker {
  const _$MessageAddSticker(
      {required this.content, required this.metadata, final String? $type})
      : $type = $type ?? 'sticker',
        super._();

  @override
  final MessageContentSticker content;
  @override
  final MessageMetaData metadata;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'MessageAdd.sticker(content: $content, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageAddSticker &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageAddStickerCopyWith<_$MessageAddSticker> get copyWith =>
      __$$MessageAddStickerCopyWithImpl<_$MessageAddSticker>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MessageContentText content, MessageMetaData metadata)
        text,
    required TResult Function(
            MessageContentImage content, MessageMetaData metadata)
        image,
    required TResult Function(
            MessageContentSticker content, MessageMetaData metadata)
        sticker,
  }) {
    return sticker(content, metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageContentText content, MessageMetaData metadata)?
        text,
    TResult? Function(MessageContentImage content, MessageMetaData metadata)?
        image,
    TResult? Function(MessageContentSticker content, MessageMetaData metadata)?
        sticker,
  }) {
    return sticker?.call(content, metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageContentText content, MessageMetaData metadata)?
        text,
    TResult Function(MessageContentImage content, MessageMetaData metadata)?
        image,
    TResult Function(MessageContentSticker content, MessageMetaData metadata)?
        sticker,
    required TResult orElse(),
  }) {
    if (sticker != null) {
      return sticker(content, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageAddText value) text,
    required TResult Function(MessageAddImage value) image,
    required TResult Function(MessageAddSticker value) sticker,
  }) {
    return sticker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageAddText value)? text,
    TResult? Function(MessageAddImage value)? image,
    TResult? Function(MessageAddSticker value)? sticker,
  }) {
    return sticker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageAddText value)? text,
    TResult Function(MessageAddImage value)? image,
    TResult Function(MessageAddSticker value)? sticker,
    required TResult orElse(),
  }) {
    if (sticker != null) {
      return sticker(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageAddStickerToJson(
      this,
    );
  }
}

abstract class MessageAddSticker extends MessageAdd {
  const factory MessageAddSticker(
      {required final MessageContentSticker content,
      required final MessageMetaData metadata}) = _$MessageAddSticker;
  const MessageAddSticker._() : super._();

  @override
  MessageContentSticker get content;
  @override
  MessageMetaData get metadata;
  @override
  @JsonKey(ignore: true)
  _$$MessageAddStickerCopyWith<_$MessageAddSticker> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageContentText _$MessageContentTextFromJson(Map<String, dynamic> json) {
  return _MessageContentText.fromJson(json);
}

/// @nodoc
mixin _$MessageContentText {
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageContentTextCopyWith<MessageContentText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageContentTextCopyWith<$Res> {
  factory $MessageContentTextCopyWith(
          MessageContentText value, $Res Function(MessageContentText) then) =
      _$MessageContentTextCopyWithImpl<$Res, MessageContentText>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$MessageContentTextCopyWithImpl<$Res, $Val extends MessageContentText>
    implements $MessageContentTextCopyWith<$Res> {
  _$MessageContentTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageContentTextCopyWith<$Res>
    implements $MessageContentTextCopyWith<$Res> {
  factory _$$_MessageContentTextCopyWith(_$_MessageContentText value,
          $Res Function(_$_MessageContentText) then) =
      __$$_MessageContentTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_MessageContentTextCopyWithImpl<$Res>
    extends _$MessageContentTextCopyWithImpl<$Res, _$_MessageContentText>
    implements _$$_MessageContentTextCopyWith<$Res> {
  __$$_MessageContentTextCopyWithImpl(
      _$_MessageContentText _value, $Res Function(_$_MessageContentText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_MessageContentText(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@_contentJsonSerializable
class _$_MessageContentText implements _MessageContentText {
  const _$_MessageContentText({required this.text});

  factory _$_MessageContentText.fromJson(Map<String, dynamic> json) =>
      _$$_MessageContentTextFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'MessageContentText(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageContentText &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageContentTextCopyWith<_$_MessageContentText> get copyWith =>
      __$$_MessageContentTextCopyWithImpl<_$_MessageContentText>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageContentTextToJson(
      this,
    );
  }
}

abstract class _MessageContentText implements MessageContentText {
  const factory _MessageContentText({required final String text}) =
      _$_MessageContentText;

  factory _MessageContentText.fromJson(Map<String, dynamic> json) =
      _$_MessageContentText.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_MessageContentTextCopyWith<_$_MessageContentText> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageContentImage _$MessageContentImageFromJson(Map<String, dynamic> json) {
  return _MessageContentImage.fromJson(json);
}

/// @nodoc
mixin _$MessageContentImage {
  String get imageUrl => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageContentImageCopyWith<MessageContentImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageContentImageCopyWith<$Res> {
  factory $MessageContentImageCopyWith(
          MessageContentImage value, $Res Function(MessageContentImage) then) =
      _$MessageContentImageCopyWithImpl<$Res, MessageContentImage>;
  @useResult
  $Res call({String imageUrl, String? caption});
}

/// @nodoc
class _$MessageContentImageCopyWithImpl<$Res, $Val extends MessageContentImage>
    implements $MessageContentImageCopyWith<$Res> {
  _$MessageContentImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? caption = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageContentImageCopyWith<$Res>
    implements $MessageContentImageCopyWith<$Res> {
  factory _$$_MessageContentImageCopyWith(_$_MessageContentImage value,
          $Res Function(_$_MessageContentImage) then) =
      __$$_MessageContentImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl, String? caption});
}

/// @nodoc
class __$$_MessageContentImageCopyWithImpl<$Res>
    extends _$MessageContentImageCopyWithImpl<$Res, _$_MessageContentImage>
    implements _$$_MessageContentImageCopyWith<$Res> {
  __$$_MessageContentImageCopyWithImpl(_$_MessageContentImage _value,
      $Res Function(_$_MessageContentImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? caption = freezed,
  }) {
    return _then(_$_MessageContentImage(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@_contentJsonSerializable
class _$_MessageContentImage implements _MessageContentImage {
  const _$_MessageContentImage({required this.imageUrl, required this.caption});

  factory _$_MessageContentImage.fromJson(Map<String, dynamic> json) =>
      _$$_MessageContentImageFromJson(json);

  @override
  final String imageUrl;
  @override
  final String? caption;

  @override
  String toString() {
    return 'MessageContentImage(imageUrl: $imageUrl, caption: $caption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageContentImage &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageContentImageCopyWith<_$_MessageContentImage> get copyWith =>
      __$$_MessageContentImageCopyWithImpl<_$_MessageContentImage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageContentImageToJson(
      this,
    );
  }
}

abstract class _MessageContentImage implements MessageContentImage {
  const factory _MessageContentImage(
      {required final String imageUrl,
      required final String? caption}) = _$_MessageContentImage;

  factory _MessageContentImage.fromJson(Map<String, dynamic> json) =
      _$_MessageContentImage.fromJson;

  @override
  String get imageUrl;
  @override
  String? get caption;
  @override
  @JsonKey(ignore: true)
  _$$_MessageContentImageCopyWith<_$_MessageContentImage> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageContentSticker _$MessageContentStickerFromJson(
    Map<String, dynamic> json) {
  return _MessageContentSticker.fromJson(json);
}

/// @nodoc
mixin _$MessageContentSticker {
  Sticker get sticker => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageContentStickerCopyWith<MessageContentSticker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageContentStickerCopyWith<$Res> {
  factory $MessageContentStickerCopyWith(MessageContentSticker value,
          $Res Function(MessageContentSticker) then) =
      _$MessageContentStickerCopyWithImpl<$Res, MessageContentSticker>;
  @useResult
  $Res call({Sticker sticker});

  $StickerCopyWith<$Res> get sticker;
}

/// @nodoc
class _$MessageContentStickerCopyWithImpl<$Res,
        $Val extends MessageContentSticker>
    implements $MessageContentStickerCopyWith<$Res> {
  _$MessageContentStickerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sticker = null,
  }) {
    return _then(_value.copyWith(
      sticker: null == sticker
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as Sticker,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StickerCopyWith<$Res> get sticker {
    return $StickerCopyWith<$Res>(_value.sticker, (value) {
      return _then(_value.copyWith(sticker: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MessageContentStickerCopyWith<$Res>
    implements $MessageContentStickerCopyWith<$Res> {
  factory _$$_MessageContentStickerCopyWith(_$_MessageContentSticker value,
          $Res Function(_$_MessageContentSticker) then) =
      __$$_MessageContentStickerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Sticker sticker});

  @override
  $StickerCopyWith<$Res> get sticker;
}

/// @nodoc
class __$$_MessageContentStickerCopyWithImpl<$Res>
    extends _$MessageContentStickerCopyWithImpl<$Res, _$_MessageContentSticker>
    implements _$$_MessageContentStickerCopyWith<$Res> {
  __$$_MessageContentStickerCopyWithImpl(_$_MessageContentSticker _value,
      $Res Function(_$_MessageContentSticker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sticker = null,
  }) {
    return _then(_$_MessageContentSticker(
      sticker: null == sticker
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as Sticker,
    ));
  }
}

/// @nodoc

@_contentJsonSerializable
class _$_MessageContentSticker implements _MessageContentSticker {
  const _$_MessageContentSticker({required this.sticker});

  factory _$_MessageContentSticker.fromJson(Map<String, dynamic> json) =>
      _$$_MessageContentStickerFromJson(json);

  @override
  final Sticker sticker;

  @override
  String toString() {
    return 'MessageContentSticker(sticker: $sticker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageContentSticker &&
            (identical(other.sticker, sticker) || other.sticker == sticker));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sticker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageContentStickerCopyWith<_$_MessageContentSticker> get copyWith =>
      __$$_MessageContentStickerCopyWithImpl<_$_MessageContentSticker>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageContentStickerToJson(
      this,
    );
  }
}

abstract class _MessageContentSticker implements MessageContentSticker {
  const factory _MessageContentSticker({required final Sticker sticker}) =
      _$_MessageContentSticker;

  factory _MessageContentSticker.fromJson(Map<String, dynamic> json) =
      _$_MessageContentSticker.fromJson;

  @override
  Sticker get sticker;
  @override
  @JsonKey(ignore: true)
  _$$_MessageContentStickerCopyWith<_$_MessageContentSticker> get copyWith =>
      throw _privateConstructorUsedError;
}
