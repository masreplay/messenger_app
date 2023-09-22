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
  @JsonKey(toJson: MessageMetaData._toJsonTimestamp)
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
      @JsonKey(toJson: MessageMetaData._toJsonTimestamp) DateTime timestamp});
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
      @JsonKey(toJson: MessageMetaData._toJsonTimestamp) DateTime timestamp});
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
      @JsonKey(toJson: MessageMetaData._toJsonTimestamp)
      required this.timestamp});

  factory _$_MessageMetaData.fromJson(Map<String, dynamic> json) =>
      _$$_MessageMetaDataFromJson(json);

  @override
  final String idFrom;
  @override
  final String idTo;
  @override
  @JsonKey(toJson: MessageMetaData._toJsonTimestamp)
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
      @JsonKey(toJson: MessageMetaData._toJsonTimestamp)
      required final DateTime timestamp}) = _$_MessageMetaData;

  factory _MessageMetaData.fromJson(Map<String, dynamic> json) =
      _$_MessageMetaData.fromJson;

  @override
  String get idFrom;
  @override
  String get idTo;
  @override
  @JsonKey(toJson: MessageMetaData._toJsonTimestamp)
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
  MessageMetaData get metadata => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MessageMetaData metadata, String content) text,
    required TResult Function(
            MessageMetaData metadata, String imageUrl, String? caption)
        image,
    required TResult Function(MessageMetaData metadata, Sticker sticker)
        sticker,
    required TResult Function(MessageMetaData metadata) fallback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageMetaData metadata, String content)? text,
    TResult? Function(
            MessageMetaData metadata, String imageUrl, String? caption)?
        image,
    TResult? Function(MessageMetaData metadata, Sticker sticker)? sticker,
    TResult? Function(MessageMetaData metadata)? fallback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageMetaData metadata, String content)? text,
    TResult Function(
            MessageMetaData metadata, String imageUrl, String? caption)?
        image,
    TResult Function(MessageMetaData metadata, Sticker sticker)? sticker,
    TResult Function(MessageMetaData metadata)? fallback,
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
  $Res call({MessageMetaData metadata});

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
abstract class _$$MessageTextCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageTextCopyWith(
          _$MessageText value, $Res Function(_$MessageText) then) =
      __$$MessageTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MessageMetaData metadata, String content});

  @override
  $MessageMetaDataCopyWith<$Res> get metadata;
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
    Object? metadata = null,
    Object? content = null,
  }) {
    return _then(_$MessageText(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MessageMetaData,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@_jsonSerializable
class _$MessageText extends MessageText {
  const _$MessageText(
      {required this.metadata, required this.content, final String? $type})
      : $type = $type ?? 'text',
        super._();

  factory _$MessageText.fromJson(Map<String, dynamic> json) =>
      _$$MessageTextFromJson(json);

  @override
  final MessageMetaData metadata;
  @override
  final String content;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.text(metadata: $metadata, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageText &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, metadata, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageTextCopyWith<_$MessageText> get copyWith =>
      __$$MessageTextCopyWithImpl<_$MessageText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MessageMetaData metadata, String content) text,
    required TResult Function(
            MessageMetaData metadata, String imageUrl, String? caption)
        image,
    required TResult Function(MessageMetaData metadata, Sticker sticker)
        sticker,
    required TResult Function(MessageMetaData metadata) fallback,
  }) {
    return text(metadata, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageMetaData metadata, String content)? text,
    TResult? Function(
            MessageMetaData metadata, String imageUrl, String? caption)?
        image,
    TResult? Function(MessageMetaData metadata, Sticker sticker)? sticker,
    TResult? Function(MessageMetaData metadata)? fallback,
  }) {
    return text?.call(metadata, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageMetaData metadata, String content)? text,
    TResult Function(
            MessageMetaData metadata, String imageUrl, String? caption)?
        image,
    TResult Function(MessageMetaData metadata, Sticker sticker)? sticker,
    TResult Function(MessageMetaData metadata)? fallback,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(metadata, content);
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
      {required final MessageMetaData metadata,
      required final String content}) = _$MessageText;
  const MessageText._() : super._();

  factory MessageText.fromJson(Map<String, dynamic> json) =
      _$MessageText.fromJson;

  @override
  MessageMetaData get metadata;
  String get content;
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
  $Res call({MessageMetaData metadata, String imageUrl, String? caption});

  @override
  $MessageMetaDataCopyWith<$Res> get metadata;
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
    Object? metadata = null,
    Object? imageUrl = null,
    Object? caption = freezed,
  }) {
    return _then(_$MessageImage(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MessageMetaData,
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

@_jsonSerializable
class _$MessageImage extends MessageImage {
  const _$MessageImage(
      {required this.metadata,
      required this.imageUrl,
      required this.caption,
      final String? $type})
      : $type = $type ?? 'image',
        super._();

  factory _$MessageImage.fromJson(Map<String, dynamic> json) =>
      _$$MessageImageFromJson(json);

  @override
  final MessageMetaData metadata;
  @override
  final String imageUrl;
  @override
  final String? caption;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.image(metadata: $metadata, imageUrl: $imageUrl, caption: $caption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImage &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, metadata, imageUrl, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImageCopyWith<_$MessageImage> get copyWith =>
      __$$MessageImageCopyWithImpl<_$MessageImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MessageMetaData metadata, String content) text,
    required TResult Function(
            MessageMetaData metadata, String imageUrl, String? caption)
        image,
    required TResult Function(MessageMetaData metadata, Sticker sticker)
        sticker,
    required TResult Function(MessageMetaData metadata) fallback,
  }) {
    return image(metadata, imageUrl, caption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageMetaData metadata, String content)? text,
    TResult? Function(
            MessageMetaData metadata, String imageUrl, String? caption)?
        image,
    TResult? Function(MessageMetaData metadata, Sticker sticker)? sticker,
    TResult? Function(MessageMetaData metadata)? fallback,
  }) {
    return image?.call(metadata, imageUrl, caption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageMetaData metadata, String content)? text,
    TResult Function(
            MessageMetaData metadata, String imageUrl, String? caption)?
        image,
    TResult Function(MessageMetaData metadata, Sticker sticker)? sticker,
    TResult Function(MessageMetaData metadata)? fallback,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(metadata, imageUrl, caption);
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
      {required final MessageMetaData metadata,
      required final String imageUrl,
      required final String? caption}) = _$MessageImage;
  const MessageImage._() : super._();

  factory MessageImage.fromJson(Map<String, dynamic> json) =
      _$MessageImage.fromJson;

  @override
  MessageMetaData get metadata;
  String get imageUrl;
  String? get caption;
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
  $Res call({MessageMetaData metadata, Sticker sticker});

  @override
  $MessageMetaDataCopyWith<$Res> get metadata;
  $StickerCopyWith<$Res> get sticker;
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
    Object? metadata = null,
    Object? sticker = null,
  }) {
    return _then(_$MessageSticker(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MessageMetaData,
      sticker: null == sticker
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as Sticker,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StickerCopyWith<$Res> get sticker {
    return $StickerCopyWith<$Res>(_value.sticker, (value) {
      return _then(_value.copyWith(sticker: value));
    });
  }
}

/// @nodoc

@_jsonSerializable
class _$MessageSticker extends MessageSticker {
  const _$MessageSticker(
      {required this.metadata, required this.sticker, final String? $type})
      : $type = $type ?? 'sticker',
        super._();

  factory _$MessageSticker.fromJson(Map<String, dynamic> json) =>
      _$$MessageStickerFromJson(json);

  @override
  final MessageMetaData metadata;
  @override
  final Sticker sticker;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.sticker(metadata: $metadata, sticker: $sticker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSticker &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.sticker, sticker) || other.sticker == sticker));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, metadata, sticker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageStickerCopyWith<_$MessageSticker> get copyWith =>
      __$$MessageStickerCopyWithImpl<_$MessageSticker>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MessageMetaData metadata, String content) text,
    required TResult Function(
            MessageMetaData metadata, String imageUrl, String? caption)
        image,
    required TResult Function(MessageMetaData metadata, Sticker sticker)
        sticker,
    required TResult Function(MessageMetaData metadata) fallback,
  }) {
    return sticker(metadata, this.sticker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageMetaData metadata, String content)? text,
    TResult? Function(
            MessageMetaData metadata, String imageUrl, String? caption)?
        image,
    TResult? Function(MessageMetaData metadata, Sticker sticker)? sticker,
    TResult? Function(MessageMetaData metadata)? fallback,
  }) {
    return sticker?.call(metadata, this.sticker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageMetaData metadata, String content)? text,
    TResult Function(
            MessageMetaData metadata, String imageUrl, String? caption)?
        image,
    TResult Function(MessageMetaData metadata, Sticker sticker)? sticker,
    TResult Function(MessageMetaData metadata)? fallback,
    required TResult orElse(),
  }) {
    if (sticker != null) {
      return sticker(metadata, this.sticker);
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
      {required final MessageMetaData metadata,
      required final Sticker sticker}) = _$MessageSticker;
  const MessageSticker._() : super._();

  factory MessageSticker.fromJson(Map<String, dynamic> json) =
      _$MessageSticker.fromJson;

  @override
  MessageMetaData get metadata;
  Sticker get sticker;
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
  $Res call({MessageMetaData metadata});

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
    Object? metadata = null,
  }) {
    return _then(_$MessageFallback(
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
  const _$MessageFallback({required this.metadata, final String? $type})
      : $type = $type ?? 'fallback',
        super._();

  factory _$MessageFallback.fromJson(Map<String, dynamic> json) =>
      _$$MessageFallbackFromJson(json);

  @override
  final MessageMetaData metadata;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.fallback(metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageFallback &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageFallbackCopyWith<_$MessageFallback> get copyWith =>
      __$$MessageFallbackCopyWithImpl<_$MessageFallback>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MessageMetaData metadata, String content) text,
    required TResult Function(
            MessageMetaData metadata, String imageUrl, String? caption)
        image,
    required TResult Function(MessageMetaData metadata, Sticker sticker)
        sticker,
    required TResult Function(MessageMetaData metadata) fallback,
  }) {
    return fallback(metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageMetaData metadata, String content)? text,
    TResult? Function(
            MessageMetaData metadata, String imageUrl, String? caption)?
        image,
    TResult? Function(MessageMetaData metadata, Sticker sticker)? sticker,
    TResult? Function(MessageMetaData metadata)? fallback,
  }) {
    return fallback?.call(metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageMetaData metadata, String content)? text,
    TResult Function(
            MessageMetaData metadata, String imageUrl, String? caption)?
        image,
    TResult Function(MessageMetaData metadata, Sticker sticker)? sticker,
    TResult Function(MessageMetaData metadata)? fallback,
    required TResult orElse(),
  }) {
    if (fallback != null) {
      return fallback(metadata);
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
  const factory MessageFallback({required final MessageMetaData metadata}) =
      _$MessageFallback;
  const MessageFallback._() : super._();

  factory MessageFallback.fromJson(Map<String, dynamic> json) =
      _$MessageFallback.fromJson;

  @override
  MessageMetaData get metadata;
  @override
  @JsonKey(ignore: true)
  _$$MessageFallbackCopyWith<_$MessageFallback> get copyWith =>
      throw _privateConstructorUsedError;
}
