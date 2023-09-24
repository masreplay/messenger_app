// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discussion_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscussionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) deleteMessage,
    required TResult Function(File file) sendImage,
    required TResult Function(String text) sendText,
    required TResult Function(Sticker sticker) sendSticker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Message message)? deleteMessage,
    TResult? Function(File file)? sendImage,
    TResult? Function(String text)? sendText,
    TResult? Function(Sticker sticker)? sendSticker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? deleteMessage,
    TResult Function(File file)? sendImage,
    TResult Function(String text)? sendText,
    TResult Function(Sticker sticker)? sendSticker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiscussionEventDelete value) deleteMessage,
    required TResult Function(DiscussionEventImage value) sendImage,
    required TResult Function(DiscussionEventText value) sendText,
    required TResult Function(DiscussionEventSticker value) sendSticker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscussionEventDelete value)? deleteMessage,
    TResult? Function(DiscussionEventImage value)? sendImage,
    TResult? Function(DiscussionEventText value)? sendText,
    TResult? Function(DiscussionEventSticker value)? sendSticker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscussionEventDelete value)? deleteMessage,
    TResult Function(DiscussionEventImage value)? sendImage,
    TResult Function(DiscussionEventText value)? sendText,
    TResult Function(DiscussionEventSticker value)? sendSticker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscussionEventCopyWith<$Res> {
  factory $DiscussionEventCopyWith(
          DiscussionEvent value, $Res Function(DiscussionEvent) then) =
      _$DiscussionEventCopyWithImpl<$Res, DiscussionEvent>;
}

/// @nodoc
class _$DiscussionEventCopyWithImpl<$Res, $Val extends DiscussionEvent>
    implements $DiscussionEventCopyWith<$Res> {
  _$DiscussionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DiscussionEventDeleteCopyWith<$Res> {
  factory _$$DiscussionEventDeleteCopyWith(_$DiscussionEventDelete value,
          $Res Function(_$DiscussionEventDelete) then) =
      __$$DiscussionEventDeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$DiscussionEventDeleteCopyWithImpl<$Res>
    extends _$DiscussionEventCopyWithImpl<$Res, _$DiscussionEventDelete>
    implements _$$DiscussionEventDeleteCopyWith<$Res> {
  __$$DiscussionEventDeleteCopyWithImpl(_$DiscussionEventDelete _value,
      $Res Function(_$DiscussionEventDelete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DiscussionEventDelete(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$DiscussionEventDelete implements DiscussionEventDelete {
  const _$DiscussionEventDelete(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'DiscussionEvent.deleteMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionEventDelete &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionEventDeleteCopyWith<_$DiscussionEventDelete> get copyWith =>
      __$$DiscussionEventDeleteCopyWithImpl<_$DiscussionEventDelete>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) deleteMessage,
    required TResult Function(File file) sendImage,
    required TResult Function(String text) sendText,
    required TResult Function(Sticker sticker) sendSticker,
  }) {
    return deleteMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Message message)? deleteMessage,
    TResult? Function(File file)? sendImage,
    TResult? Function(String text)? sendText,
    TResult? Function(Sticker sticker)? sendSticker,
  }) {
    return deleteMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? deleteMessage,
    TResult Function(File file)? sendImage,
    TResult Function(String text)? sendText,
    TResult Function(Sticker sticker)? sendSticker,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiscussionEventDelete value) deleteMessage,
    required TResult Function(DiscussionEventImage value) sendImage,
    required TResult Function(DiscussionEventText value) sendText,
    required TResult Function(DiscussionEventSticker value) sendSticker,
  }) {
    return deleteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscussionEventDelete value)? deleteMessage,
    TResult? Function(DiscussionEventImage value)? sendImage,
    TResult? Function(DiscussionEventText value)? sendText,
    TResult? Function(DiscussionEventSticker value)? sendSticker,
  }) {
    return deleteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscussionEventDelete value)? deleteMessage,
    TResult Function(DiscussionEventImage value)? sendImage,
    TResult Function(DiscussionEventText value)? sendText,
    TResult Function(DiscussionEventSticker value)? sendSticker,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class DiscussionEventDelete implements DiscussionEvent {
  const factory DiscussionEventDelete(final Message message) =
      _$DiscussionEventDelete;

  Message get message;
  @JsonKey(ignore: true)
  _$$DiscussionEventDeleteCopyWith<_$DiscussionEventDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DiscussionEventImageCopyWith<$Res> {
  factory _$$DiscussionEventImageCopyWith(_$DiscussionEventImage value,
          $Res Function(_$DiscussionEventImage) then) =
      __$$DiscussionEventImageCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$DiscussionEventImageCopyWithImpl<$Res>
    extends _$DiscussionEventCopyWithImpl<$Res, _$DiscussionEventImage>
    implements _$$DiscussionEventImageCopyWith<$Res> {
  __$$DiscussionEventImageCopyWithImpl(_$DiscussionEventImage _value,
      $Res Function(_$DiscussionEventImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$DiscussionEventImage(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$DiscussionEventImage implements DiscussionEventImage {
  const _$DiscussionEventImage(this.file);

  @override
  final File file;

  @override
  String toString() {
    return 'DiscussionEvent.sendImage(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionEventImage &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionEventImageCopyWith<_$DiscussionEventImage> get copyWith =>
      __$$DiscussionEventImageCopyWithImpl<_$DiscussionEventImage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) deleteMessage,
    required TResult Function(File file) sendImage,
    required TResult Function(String text) sendText,
    required TResult Function(Sticker sticker) sendSticker,
  }) {
    return sendImage(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Message message)? deleteMessage,
    TResult? Function(File file)? sendImage,
    TResult? Function(String text)? sendText,
    TResult? Function(Sticker sticker)? sendSticker,
  }) {
    return sendImage?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? deleteMessage,
    TResult Function(File file)? sendImage,
    TResult Function(String text)? sendText,
    TResult Function(Sticker sticker)? sendSticker,
    required TResult orElse(),
  }) {
    if (sendImage != null) {
      return sendImage(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiscussionEventDelete value) deleteMessage,
    required TResult Function(DiscussionEventImage value) sendImage,
    required TResult Function(DiscussionEventText value) sendText,
    required TResult Function(DiscussionEventSticker value) sendSticker,
  }) {
    return sendImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscussionEventDelete value)? deleteMessage,
    TResult? Function(DiscussionEventImage value)? sendImage,
    TResult? Function(DiscussionEventText value)? sendText,
    TResult? Function(DiscussionEventSticker value)? sendSticker,
  }) {
    return sendImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscussionEventDelete value)? deleteMessage,
    TResult Function(DiscussionEventImage value)? sendImage,
    TResult Function(DiscussionEventText value)? sendText,
    TResult Function(DiscussionEventSticker value)? sendSticker,
    required TResult orElse(),
  }) {
    if (sendImage != null) {
      return sendImage(this);
    }
    return orElse();
  }
}

abstract class DiscussionEventImage implements DiscussionEvent {
  const factory DiscussionEventImage(final File file) = _$DiscussionEventImage;

  File get file;
  @JsonKey(ignore: true)
  _$$DiscussionEventImageCopyWith<_$DiscussionEventImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DiscussionEventTextCopyWith<$Res> {
  factory _$$DiscussionEventTextCopyWith(_$DiscussionEventText value,
          $Res Function(_$DiscussionEventText) then) =
      __$$DiscussionEventTextCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$DiscussionEventTextCopyWithImpl<$Res>
    extends _$DiscussionEventCopyWithImpl<$Res, _$DiscussionEventText>
    implements _$$DiscussionEventTextCopyWith<$Res> {
  __$$DiscussionEventTextCopyWithImpl(
      _$DiscussionEventText _value, $Res Function(_$DiscussionEventText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$DiscussionEventText(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DiscussionEventText implements DiscussionEventText {
  const _$DiscussionEventText(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'DiscussionEvent.sendText(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionEventText &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionEventTextCopyWith<_$DiscussionEventText> get copyWith =>
      __$$DiscussionEventTextCopyWithImpl<_$DiscussionEventText>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) deleteMessage,
    required TResult Function(File file) sendImage,
    required TResult Function(String text) sendText,
    required TResult Function(Sticker sticker) sendSticker,
  }) {
    return sendText(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Message message)? deleteMessage,
    TResult? Function(File file)? sendImage,
    TResult? Function(String text)? sendText,
    TResult? Function(Sticker sticker)? sendSticker,
  }) {
    return sendText?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? deleteMessage,
    TResult Function(File file)? sendImage,
    TResult Function(String text)? sendText,
    TResult Function(Sticker sticker)? sendSticker,
    required TResult orElse(),
  }) {
    if (sendText != null) {
      return sendText(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiscussionEventDelete value) deleteMessage,
    required TResult Function(DiscussionEventImage value) sendImage,
    required TResult Function(DiscussionEventText value) sendText,
    required TResult Function(DiscussionEventSticker value) sendSticker,
  }) {
    return sendText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscussionEventDelete value)? deleteMessage,
    TResult? Function(DiscussionEventImage value)? sendImage,
    TResult? Function(DiscussionEventText value)? sendText,
    TResult? Function(DiscussionEventSticker value)? sendSticker,
  }) {
    return sendText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscussionEventDelete value)? deleteMessage,
    TResult Function(DiscussionEventImage value)? sendImage,
    TResult Function(DiscussionEventText value)? sendText,
    TResult Function(DiscussionEventSticker value)? sendSticker,
    required TResult orElse(),
  }) {
    if (sendText != null) {
      return sendText(this);
    }
    return orElse();
  }
}

abstract class DiscussionEventText implements DiscussionEvent {
  const factory DiscussionEventText(final String text) = _$DiscussionEventText;

  String get text;
  @JsonKey(ignore: true)
  _$$DiscussionEventTextCopyWith<_$DiscussionEventText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DiscussionEventStickerCopyWith<$Res> {
  factory _$$DiscussionEventStickerCopyWith(_$DiscussionEventSticker value,
          $Res Function(_$DiscussionEventSticker) then) =
      __$$DiscussionEventStickerCopyWithImpl<$Res>;
  @useResult
  $Res call({Sticker sticker});

  $StickerCopyWith<$Res> get sticker;
}

/// @nodoc
class __$$DiscussionEventStickerCopyWithImpl<$Res>
    extends _$DiscussionEventCopyWithImpl<$Res, _$DiscussionEventSticker>
    implements _$$DiscussionEventStickerCopyWith<$Res> {
  __$$DiscussionEventStickerCopyWithImpl(_$DiscussionEventSticker _value,
      $Res Function(_$DiscussionEventSticker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sticker = null,
  }) {
    return _then(_$DiscussionEventSticker(
      null == sticker
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

class _$DiscussionEventSticker implements DiscussionEventSticker {
  const _$DiscussionEventSticker(this.sticker);

  @override
  final Sticker sticker;

  @override
  String toString() {
    return 'DiscussionEvent.sendSticker(sticker: $sticker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionEventSticker &&
            (identical(other.sticker, sticker) || other.sticker == sticker));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sticker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionEventStickerCopyWith<_$DiscussionEventSticker> get copyWith =>
      __$$DiscussionEventStickerCopyWithImpl<_$DiscussionEventSticker>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) deleteMessage,
    required TResult Function(File file) sendImage,
    required TResult Function(String text) sendText,
    required TResult Function(Sticker sticker) sendSticker,
  }) {
    return sendSticker(sticker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Message message)? deleteMessage,
    TResult? Function(File file)? sendImage,
    TResult? Function(String text)? sendText,
    TResult? Function(Sticker sticker)? sendSticker,
  }) {
    return sendSticker?.call(sticker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? deleteMessage,
    TResult Function(File file)? sendImage,
    TResult Function(String text)? sendText,
    TResult Function(Sticker sticker)? sendSticker,
    required TResult orElse(),
  }) {
    if (sendSticker != null) {
      return sendSticker(sticker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiscussionEventDelete value) deleteMessage,
    required TResult Function(DiscussionEventImage value) sendImage,
    required TResult Function(DiscussionEventText value) sendText,
    required TResult Function(DiscussionEventSticker value) sendSticker,
  }) {
    return sendSticker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscussionEventDelete value)? deleteMessage,
    TResult? Function(DiscussionEventImage value)? sendImage,
    TResult? Function(DiscussionEventText value)? sendText,
    TResult? Function(DiscussionEventSticker value)? sendSticker,
  }) {
    return sendSticker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscussionEventDelete value)? deleteMessage,
    TResult Function(DiscussionEventImage value)? sendImage,
    TResult Function(DiscussionEventText value)? sendText,
    TResult Function(DiscussionEventSticker value)? sendSticker,
    required TResult orElse(),
  }) {
    if (sendSticker != null) {
      return sendSticker(this);
    }
    return orElse();
  }
}

abstract class DiscussionEventSticker implements DiscussionEvent {
  const factory DiscussionEventSticker(final Sticker sticker) =
      _$DiscussionEventSticker;

  Sticker get sticker;
  @JsonKey(ignore: true)
  _$$DiscussionEventStickerCopyWith<_$DiscussionEventSticker> get copyWith =>
      throw _privateConstructorUsedError;
}
