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
  String get idFrom => throw _privateConstructorUsedError;
  String get idTo => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String idFrom, String idTo, DateTime timestamp, String content)
        text,
    required TResult Function(String idFrom, String idTo, DateTime timestamp,
            String imageUrl, String? caption)
        image,
    required TResult Function(
            String idFrom, String idTo, DateTime timestamp, Sticker sticker)
        sticker,
    required TResult Function(String idFrom, String idTo, DateTime timestamp)
        fallback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String idFrom, String idTo, DateTime timestamp, String content)?
        text,
    TResult? Function(String idFrom, String idTo, DateTime timestamp,
            String imageUrl, String? caption)?
        image,
    TResult? Function(
            String idFrom, String idTo, DateTime timestamp, Sticker sticker)?
        sticker,
    TResult? Function(String idFrom, String idTo, DateTime timestamp)? fallback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String idFrom, String idTo, DateTime timestamp, String content)?
        text,
    TResult Function(String idFrom, String idTo, DateTime timestamp,
            String imageUrl, String? caption)?
        image,
    TResult Function(
            String idFrom, String idTo, DateTime timestamp, Sticker sticker)?
        sticker,
    TResult Function(String idFrom, String idTo, DateTime timestamp)? fallback,
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
  $Res call({String idFrom, String idTo, DateTime timestamp});
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
abstract class _$$MessageTextCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageTextCopyWith(
          _$MessageText value, $Res Function(_$MessageText) then) =
      __$$MessageTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idFrom, String idTo, DateTime timestamp, String content});
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
    Object? idFrom = null,
    Object? idTo = null,
    Object? timestamp = null,
    Object? content = null,
  }) {
    return _then(_$MessageText(
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
      {required this.idFrom,
      required this.idTo,
      required this.timestamp,
      required this.content,
      final String? $type})
      : $type = $type ?? 'text',
        super._();

  factory _$MessageText.fromJson(Map<String, dynamic> json) =>
      _$$MessageTextFromJson(json);

  @override
  final String idFrom;
  @override
  final String idTo;
  @override
  final DateTime timestamp;
  @override
  final String content;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.text(idFrom: $idFrom, idTo: $idTo, timestamp: $timestamp, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageText &&
            (identical(other.idFrom, idFrom) || other.idFrom == idFrom) &&
            (identical(other.idTo, idTo) || other.idTo == idTo) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idFrom, idTo, timestamp, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageTextCopyWith<_$MessageText> get copyWith =>
      __$$MessageTextCopyWithImpl<_$MessageText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String idFrom, String idTo, DateTime timestamp, String content)
        text,
    required TResult Function(String idFrom, String idTo, DateTime timestamp,
            String imageUrl, String? caption)
        image,
    required TResult Function(
            String idFrom, String idTo, DateTime timestamp, Sticker sticker)
        sticker,
    required TResult Function(String idFrom, String idTo, DateTime timestamp)
        fallback,
  }) {
    return text(idFrom, idTo, timestamp, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String idFrom, String idTo, DateTime timestamp, String content)?
        text,
    TResult? Function(String idFrom, String idTo, DateTime timestamp,
            String imageUrl, String? caption)?
        image,
    TResult? Function(
            String idFrom, String idTo, DateTime timestamp, Sticker sticker)?
        sticker,
    TResult? Function(String idFrom, String idTo, DateTime timestamp)? fallback,
  }) {
    return text?.call(idFrom, idTo, timestamp, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String idFrom, String idTo, DateTime timestamp, String content)?
        text,
    TResult Function(String idFrom, String idTo, DateTime timestamp,
            String imageUrl, String? caption)?
        image,
    TResult Function(
            String idFrom, String idTo, DateTime timestamp, Sticker sticker)?
        sticker,
    TResult Function(String idFrom, String idTo, DateTime timestamp)? fallback,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(idFrom, idTo, timestamp, content);
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
      {required final String idFrom,
      required final String idTo,
      required final DateTime timestamp,
      required final String content}) = _$MessageText;
  const MessageText._() : super._();

  factory MessageText.fromJson(Map<String, dynamic> json) =
      _$MessageText.fromJson;

  @override
  String get idFrom;
  @override
  String get idTo;
  @override
  DateTime get timestamp;
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
  $Res call(
      {String idFrom,
      String idTo,
      DateTime timestamp,
      String imageUrl,
      String? caption});
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
    Object? idFrom = null,
    Object? idTo = null,
    Object? timestamp = null,
    Object? imageUrl = null,
    Object? caption = freezed,
  }) {
    return _then(_$MessageImage(
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
      {required this.idFrom,
      required this.idTo,
      required this.timestamp,
      required this.imageUrl,
      required this.caption,
      final String? $type})
      : $type = $type ?? 'image',
        super._();

  factory _$MessageImage.fromJson(Map<String, dynamic> json) =>
      _$$MessageImageFromJson(json);

  @override
  final String idFrom;
  @override
  final String idTo;
  @override
  final DateTime timestamp;
  @override
  final String imageUrl;
  @override
  final String? caption;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.image(idFrom: $idFrom, idTo: $idTo, timestamp: $timestamp, imageUrl: $imageUrl, caption: $caption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImage &&
            (identical(other.idFrom, idFrom) || other.idFrom == idFrom) &&
            (identical(other.idTo, idTo) || other.idTo == idTo) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idFrom, idTo, timestamp, imageUrl, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImageCopyWith<_$MessageImage> get copyWith =>
      __$$MessageImageCopyWithImpl<_$MessageImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String idFrom, String idTo, DateTime timestamp, String content)
        text,
    required TResult Function(String idFrom, String idTo, DateTime timestamp,
            String imageUrl, String? caption)
        image,
    required TResult Function(
            String idFrom, String idTo, DateTime timestamp, Sticker sticker)
        sticker,
    required TResult Function(String idFrom, String idTo, DateTime timestamp)
        fallback,
  }) {
    return image(idFrom, idTo, timestamp, imageUrl, caption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String idFrom, String idTo, DateTime timestamp, String content)?
        text,
    TResult? Function(String idFrom, String idTo, DateTime timestamp,
            String imageUrl, String? caption)?
        image,
    TResult? Function(
            String idFrom, String idTo, DateTime timestamp, Sticker sticker)?
        sticker,
    TResult? Function(String idFrom, String idTo, DateTime timestamp)? fallback,
  }) {
    return image?.call(idFrom, idTo, timestamp, imageUrl, caption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String idFrom, String idTo, DateTime timestamp, String content)?
        text,
    TResult Function(String idFrom, String idTo, DateTime timestamp,
            String imageUrl, String? caption)?
        image,
    TResult Function(
            String idFrom, String idTo, DateTime timestamp, Sticker sticker)?
        sticker,
    TResult Function(String idFrom, String idTo, DateTime timestamp)? fallback,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(idFrom, idTo, timestamp, imageUrl, caption);
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
      {required final String idFrom,
      required final String idTo,
      required final DateTime timestamp,
      required final String imageUrl,
      required final String? caption}) = _$MessageImage;
  const MessageImage._() : super._();

  factory MessageImage.fromJson(Map<String, dynamic> json) =
      _$MessageImage.fromJson;

  @override
  String get idFrom;
  @override
  String get idTo;
  @override
  DateTime get timestamp;
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
  $Res call({String idFrom, String idTo, DateTime timestamp, Sticker sticker});

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
    Object? idFrom = null,
    Object? idTo = null,
    Object? timestamp = null,
    Object? sticker = null,
  }) {
    return _then(_$MessageSticker(
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
      {required this.idFrom,
      required this.idTo,
      required this.timestamp,
      required this.sticker,
      final String? $type})
      : $type = $type ?? 'sticker',
        super._();

  factory _$MessageSticker.fromJson(Map<String, dynamic> json) =>
      _$$MessageStickerFromJson(json);

  @override
  final String idFrom;
  @override
  final String idTo;
  @override
  final DateTime timestamp;
  @override
  final Sticker sticker;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.sticker(idFrom: $idFrom, idTo: $idTo, timestamp: $timestamp, sticker: $sticker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSticker &&
            (identical(other.idFrom, idFrom) || other.idFrom == idFrom) &&
            (identical(other.idTo, idTo) || other.idTo == idTo) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.sticker, sticker) || other.sticker == sticker));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idFrom, idTo, timestamp, sticker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageStickerCopyWith<_$MessageSticker> get copyWith =>
      __$$MessageStickerCopyWithImpl<_$MessageSticker>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String idFrom, String idTo, DateTime timestamp, String content)
        text,
    required TResult Function(String idFrom, String idTo, DateTime timestamp,
            String imageUrl, String? caption)
        image,
    required TResult Function(
            String idFrom, String idTo, DateTime timestamp, Sticker sticker)
        sticker,
    required TResult Function(String idFrom, String idTo, DateTime timestamp)
        fallback,
  }) {
    return sticker(idFrom, idTo, timestamp, this.sticker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String idFrom, String idTo, DateTime timestamp, String content)?
        text,
    TResult? Function(String idFrom, String idTo, DateTime timestamp,
            String imageUrl, String? caption)?
        image,
    TResult? Function(
            String idFrom, String idTo, DateTime timestamp, Sticker sticker)?
        sticker,
    TResult? Function(String idFrom, String idTo, DateTime timestamp)? fallback,
  }) {
    return sticker?.call(idFrom, idTo, timestamp, this.sticker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String idFrom, String idTo, DateTime timestamp, String content)?
        text,
    TResult Function(String idFrom, String idTo, DateTime timestamp,
            String imageUrl, String? caption)?
        image,
    TResult Function(
            String idFrom, String idTo, DateTime timestamp, Sticker sticker)?
        sticker,
    TResult Function(String idFrom, String idTo, DateTime timestamp)? fallback,
    required TResult orElse(),
  }) {
    if (sticker != null) {
      return sticker(idFrom, idTo, timestamp, this.sticker);
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
      {required final String idFrom,
      required final String idTo,
      required final DateTime timestamp,
      required final Sticker sticker}) = _$MessageSticker;
  const MessageSticker._() : super._();

  factory MessageSticker.fromJson(Map<String, dynamic> json) =
      _$MessageSticker.fromJson;

  @override
  String get idFrom;
  @override
  String get idTo;
  @override
  DateTime get timestamp;
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
  $Res call({String idFrom, String idTo, DateTime timestamp});
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
    Object? idFrom = null,
    Object? idTo = null,
    Object? timestamp = null,
  }) {
    return _then(_$MessageFallback(
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
class _$MessageFallback extends MessageFallback {
  const _$MessageFallback(
      {required this.idFrom,
      required this.idTo,
      required this.timestamp,
      final String? $type})
      : $type = $type ?? 'fallback',
        super._();

  factory _$MessageFallback.fromJson(Map<String, dynamic> json) =>
      _$$MessageFallbackFromJson(json);

  @override
  final String idFrom;
  @override
  final String idTo;
  @override
  final DateTime timestamp;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.fallback(idFrom: $idFrom, idTo: $idTo, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageFallback &&
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
  _$$MessageFallbackCopyWith<_$MessageFallback> get copyWith =>
      __$$MessageFallbackCopyWithImpl<_$MessageFallback>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String idFrom, String idTo, DateTime timestamp, String content)
        text,
    required TResult Function(String idFrom, String idTo, DateTime timestamp,
            String imageUrl, String? caption)
        image,
    required TResult Function(
            String idFrom, String idTo, DateTime timestamp, Sticker sticker)
        sticker,
    required TResult Function(String idFrom, String idTo, DateTime timestamp)
        fallback,
  }) {
    return fallback(idFrom, idTo, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String idFrom, String idTo, DateTime timestamp, String content)?
        text,
    TResult? Function(String idFrom, String idTo, DateTime timestamp,
            String imageUrl, String? caption)?
        image,
    TResult? Function(
            String idFrom, String idTo, DateTime timestamp, Sticker sticker)?
        sticker,
    TResult? Function(String idFrom, String idTo, DateTime timestamp)? fallback,
  }) {
    return fallback?.call(idFrom, idTo, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String idFrom, String idTo, DateTime timestamp, String content)?
        text,
    TResult Function(String idFrom, String idTo, DateTime timestamp,
            String imageUrl, String? caption)?
        image,
    TResult Function(
            String idFrom, String idTo, DateTime timestamp, Sticker sticker)?
        sticker,
    TResult Function(String idFrom, String idTo, DateTime timestamp)? fallback,
    required TResult orElse(),
  }) {
    if (fallback != null) {
      return fallback(idFrom, idTo, timestamp);
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
      {required final String idFrom,
      required final String idTo,
      required final DateTime timestamp}) = _$MessageFallback;
  const MessageFallback._() : super._();

  factory MessageFallback.fromJson(Map<String, dynamic> json) =
      _$MessageFallback.fromJson;

  @override
  String get idFrom;
  @override
  String get idTo;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$MessageFallbackCopyWith<_$MessageFallback> get copyWith =>
      throw _privateConstructorUsedError;
}
