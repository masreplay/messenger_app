// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discussion_cubit.dart';

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
    required TResult Function(File file) image,
    required TResult Function(String text) text,
    required TResult Function(Sticker sticker) sticker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? image,
    TResult? Function(String text)? text,
    TResult? Function(Sticker sticker)? sticker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? image,
    TResult Function(String text)? text,
    TResult Function(Sticker sticker)? sticker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiscussionEventImage value) image,
    required TResult Function(_DiscussionEventText value) text,
    required TResult Function(_DiscussionEventSticker value) sticker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscussionEventImage value)? image,
    TResult? Function(_DiscussionEventText value)? text,
    TResult? Function(_DiscussionEventSticker value)? sticker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscussionEventImage value)? image,
    TResult Function(_DiscussionEventText value)? text,
    TResult Function(_DiscussionEventSticker value)? sticker,
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
abstract class _$$_DiscussionEventImageCopyWith<$Res> {
  factory _$$_DiscussionEventImageCopyWith(_$_DiscussionEventImage value,
          $Res Function(_$_DiscussionEventImage) then) =
      __$$_DiscussionEventImageCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$_DiscussionEventImageCopyWithImpl<$Res>
    extends _$DiscussionEventCopyWithImpl<$Res, _$_DiscussionEventImage>
    implements _$$_DiscussionEventImageCopyWith<$Res> {
  __$$_DiscussionEventImageCopyWithImpl(_$_DiscussionEventImage _value,
      $Res Function(_$_DiscussionEventImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$_DiscussionEventImage(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_DiscussionEventImage implements _DiscussionEventImage {
  const _$_DiscussionEventImage(this.file);

  @override
  final File file;

  @override
  String toString() {
    return 'DiscussionEvent.image(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscussionEventImage &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscussionEventImageCopyWith<_$_DiscussionEventImage> get copyWith =>
      __$$_DiscussionEventImageCopyWithImpl<_$_DiscussionEventImage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) image,
    required TResult Function(String text) text,
    required TResult Function(Sticker sticker) sticker,
  }) {
    return image(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? image,
    TResult? Function(String text)? text,
    TResult? Function(Sticker sticker)? sticker,
  }) {
    return image?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? image,
    TResult Function(String text)? text,
    TResult Function(Sticker sticker)? sticker,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiscussionEventImage value) image,
    required TResult Function(_DiscussionEventText value) text,
    required TResult Function(_DiscussionEventSticker value) sticker,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscussionEventImage value)? image,
    TResult? Function(_DiscussionEventText value)? text,
    TResult? Function(_DiscussionEventSticker value)? sticker,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscussionEventImage value)? image,
    TResult Function(_DiscussionEventText value)? text,
    TResult Function(_DiscussionEventSticker value)? sticker,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }
}

abstract class _DiscussionEventImage implements DiscussionEvent {
  const factory _DiscussionEventImage(final File file) =
      _$_DiscussionEventImage;

  File get file;
  @JsonKey(ignore: true)
  _$$_DiscussionEventImageCopyWith<_$_DiscussionEventImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DiscussionEventTextCopyWith<$Res> {
  factory _$$_DiscussionEventTextCopyWith(_$_DiscussionEventText value,
          $Res Function(_$_DiscussionEventText) then) =
      __$$_DiscussionEventTextCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_DiscussionEventTextCopyWithImpl<$Res>
    extends _$DiscussionEventCopyWithImpl<$Res, _$_DiscussionEventText>
    implements _$$_DiscussionEventTextCopyWith<$Res> {
  __$$_DiscussionEventTextCopyWithImpl(_$_DiscussionEventText _value,
      $Res Function(_$_DiscussionEventText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_DiscussionEventText(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DiscussionEventText implements _DiscussionEventText {
  const _$_DiscussionEventText(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'DiscussionEvent.text(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscussionEventText &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscussionEventTextCopyWith<_$_DiscussionEventText> get copyWith =>
      __$$_DiscussionEventTextCopyWithImpl<_$_DiscussionEventText>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) image,
    required TResult Function(String text) text,
    required TResult Function(Sticker sticker) sticker,
  }) {
    return text(this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? image,
    TResult? Function(String text)? text,
    TResult? Function(Sticker sticker)? sticker,
  }) {
    return text?.call(this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? image,
    TResult Function(String text)? text,
    TResult Function(Sticker sticker)? sticker,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiscussionEventImage value) image,
    required TResult Function(_DiscussionEventText value) text,
    required TResult Function(_DiscussionEventSticker value) sticker,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscussionEventImage value)? image,
    TResult? Function(_DiscussionEventText value)? text,
    TResult? Function(_DiscussionEventSticker value)? sticker,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscussionEventImage value)? image,
    TResult Function(_DiscussionEventText value)? text,
    TResult Function(_DiscussionEventSticker value)? sticker,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class _DiscussionEventText implements DiscussionEvent {
  const factory _DiscussionEventText(final String text) =
      _$_DiscussionEventText;

  String get text;
  @JsonKey(ignore: true)
  _$$_DiscussionEventTextCopyWith<_$_DiscussionEventText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DiscussionEventStickerCopyWith<$Res> {
  factory _$$_DiscussionEventStickerCopyWith(_$_DiscussionEventSticker value,
          $Res Function(_$_DiscussionEventSticker) then) =
      __$$_DiscussionEventStickerCopyWithImpl<$Res>;
  @useResult
  $Res call({Sticker sticker});

  $StickerCopyWith<$Res> get sticker;
}

/// @nodoc
class __$$_DiscussionEventStickerCopyWithImpl<$Res>
    extends _$DiscussionEventCopyWithImpl<$Res, _$_DiscussionEventSticker>
    implements _$$_DiscussionEventStickerCopyWith<$Res> {
  __$$_DiscussionEventStickerCopyWithImpl(_$_DiscussionEventSticker _value,
      $Res Function(_$_DiscussionEventSticker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sticker = null,
  }) {
    return _then(_$_DiscussionEventSticker(
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

class _$_DiscussionEventSticker implements _DiscussionEventSticker {
  const _$_DiscussionEventSticker(this.sticker);

  @override
  final Sticker sticker;

  @override
  String toString() {
    return 'DiscussionEvent.sticker(sticker: $sticker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscussionEventSticker &&
            (identical(other.sticker, sticker) || other.sticker == sticker));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sticker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscussionEventStickerCopyWith<_$_DiscussionEventSticker> get copyWith =>
      __$$_DiscussionEventStickerCopyWithImpl<_$_DiscussionEventSticker>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) image,
    required TResult Function(String text) text,
    required TResult Function(Sticker sticker) sticker,
  }) {
    return sticker(this.sticker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? image,
    TResult? Function(String text)? text,
    TResult? Function(Sticker sticker)? sticker,
  }) {
    return sticker?.call(this.sticker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? image,
    TResult Function(String text)? text,
    TResult Function(Sticker sticker)? sticker,
    required TResult orElse(),
  }) {
    if (sticker != null) {
      return sticker(this.sticker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiscussionEventImage value) image,
    required TResult Function(_DiscussionEventText value) text,
    required TResult Function(_DiscussionEventSticker value) sticker,
  }) {
    return sticker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscussionEventImage value)? image,
    TResult? Function(_DiscussionEventText value)? text,
    TResult? Function(_DiscussionEventSticker value)? sticker,
  }) {
    return sticker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscussionEventImage value)? image,
    TResult Function(_DiscussionEventText value)? text,
    TResult Function(_DiscussionEventSticker value)? sticker,
    required TResult orElse(),
  }) {
    if (sticker != null) {
      return sticker(this);
    }
    return orElse();
  }
}

abstract class _DiscussionEventSticker implements DiscussionEvent {
  const factory _DiscussionEventSticker(final Sticker sticker) =
      _$_DiscussionEventSticker;

  Sticker get sticker;
  @JsonKey(ignore: true)
  _$$_DiscussionEventStickerCopyWith<_$_DiscussionEventSticker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DiscussionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingInProgress,
    required TResult Function(Message message) messageSent,
    required TResult Function(Object? error, StackTrace stackTrace) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingInProgress,
    TResult? Function(Message message)? messageSent,
    TResult? Function(Object? error, StackTrace stackTrace)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingInProgress,
    TResult Function(Message message)? messageSent,
    TResult Function(Object? error, StackTrace stackTrace)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiscussionStateInitial value) initial,
    required TResult Function(_SendingInProgress value) sendingInProgress,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_DiscussionStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscussionStateInitial value)? initial,
    TResult? Function(_SendingInProgress value)? sendingInProgress,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_DiscussionStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscussionStateInitial value)? initial,
    TResult Function(_SendingInProgress value)? sendingInProgress,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_DiscussionStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscussionStateCopyWith<$Res> {
  factory $DiscussionStateCopyWith(
          DiscussionState value, $Res Function(DiscussionState) then) =
      _$DiscussionStateCopyWithImpl<$Res, DiscussionState>;
}

/// @nodoc
class _$DiscussionStateCopyWithImpl<$Res, $Val extends DiscussionState>
    implements $DiscussionStateCopyWith<$Res> {
  _$DiscussionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DiscussionStateInitialCopyWith<$Res> {
  factory _$$_DiscussionStateInitialCopyWith(_$_DiscussionStateInitial value,
          $Res Function(_$_DiscussionStateInitial) then) =
      __$$_DiscussionStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DiscussionStateInitialCopyWithImpl<$Res>
    extends _$DiscussionStateCopyWithImpl<$Res, _$_DiscussionStateInitial>
    implements _$$_DiscussionStateInitialCopyWith<$Res> {
  __$$_DiscussionStateInitialCopyWithImpl(_$_DiscussionStateInitial _value,
      $Res Function(_$_DiscussionStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DiscussionStateInitial implements _DiscussionStateInitial {
  const _$_DiscussionStateInitial();

  @override
  String toString() {
    return 'DiscussionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscussionStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingInProgress,
    required TResult Function(Message message) messageSent,
    required TResult Function(Object? error, StackTrace stackTrace) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingInProgress,
    TResult? Function(Message message)? messageSent,
    TResult? Function(Object? error, StackTrace stackTrace)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingInProgress,
    TResult Function(Message message)? messageSent,
    TResult Function(Object? error, StackTrace stackTrace)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiscussionStateInitial value) initial,
    required TResult Function(_SendingInProgress value) sendingInProgress,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_DiscussionStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscussionStateInitial value)? initial,
    TResult? Function(_SendingInProgress value)? sendingInProgress,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_DiscussionStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscussionStateInitial value)? initial,
    TResult Function(_SendingInProgress value)? sendingInProgress,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_DiscussionStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DiscussionStateInitial implements DiscussionState {
  const factory _DiscussionStateInitial() = _$_DiscussionStateInitial;
}

/// @nodoc
abstract class _$$_SendingInProgressCopyWith<$Res> {
  factory _$$_SendingInProgressCopyWith(_$_SendingInProgress value,
          $Res Function(_$_SendingInProgress) then) =
      __$$_SendingInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendingInProgressCopyWithImpl<$Res>
    extends _$DiscussionStateCopyWithImpl<$Res, _$_SendingInProgress>
    implements _$$_SendingInProgressCopyWith<$Res> {
  __$$_SendingInProgressCopyWithImpl(
      _$_SendingInProgress _value, $Res Function(_$_SendingInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SendingInProgress implements _SendingInProgress {
  const _$_SendingInProgress();

  @override
  String toString() {
    return 'DiscussionState.sendingInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SendingInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingInProgress,
    required TResult Function(Message message) messageSent,
    required TResult Function(Object? error, StackTrace stackTrace) failure,
  }) {
    return sendingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingInProgress,
    TResult? Function(Message message)? messageSent,
    TResult? Function(Object? error, StackTrace stackTrace)? failure,
  }) {
    return sendingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingInProgress,
    TResult Function(Message message)? messageSent,
    TResult Function(Object? error, StackTrace stackTrace)? failure,
    required TResult orElse(),
  }) {
    if (sendingInProgress != null) {
      return sendingInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiscussionStateInitial value) initial,
    required TResult Function(_SendingInProgress value) sendingInProgress,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_DiscussionStateFailure value) failure,
  }) {
    return sendingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscussionStateInitial value)? initial,
    TResult? Function(_SendingInProgress value)? sendingInProgress,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_DiscussionStateFailure value)? failure,
  }) {
    return sendingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscussionStateInitial value)? initial,
    TResult Function(_SendingInProgress value)? sendingInProgress,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_DiscussionStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (sendingInProgress != null) {
      return sendingInProgress(this);
    }
    return orElse();
  }
}

abstract class _SendingInProgress implements DiscussionState {
  const factory _SendingInProgress() = _$_SendingInProgress;
}

/// @nodoc
abstract class _$$_MessageSentCopyWith<$Res> {
  factory _$$_MessageSentCopyWith(
          _$_MessageSent value, $Res Function(_$_MessageSent) then) =
      __$$_MessageSentCopyWithImpl<$Res>;
  @useResult
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$_MessageSentCopyWithImpl<$Res>
    extends _$DiscussionStateCopyWithImpl<$Res, _$_MessageSent>
    implements _$$_MessageSentCopyWith<$Res> {
  __$$_MessageSentCopyWithImpl(
      _$_MessageSent _value, $Res Function(_$_MessageSent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_MessageSent(
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

class _$_MessageSent implements _MessageSent {
  const _$_MessageSent(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'DiscussionState.messageSent(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageSent &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageSentCopyWith<_$_MessageSent> get copyWith =>
      __$$_MessageSentCopyWithImpl<_$_MessageSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingInProgress,
    required TResult Function(Message message) messageSent,
    required TResult Function(Object? error, StackTrace stackTrace) failure,
  }) {
    return messageSent(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingInProgress,
    TResult? Function(Message message)? messageSent,
    TResult? Function(Object? error, StackTrace stackTrace)? failure,
  }) {
    return messageSent?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingInProgress,
    TResult Function(Message message)? messageSent,
    TResult Function(Object? error, StackTrace stackTrace)? failure,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiscussionStateInitial value) initial,
    required TResult Function(_SendingInProgress value) sendingInProgress,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_DiscussionStateFailure value) failure,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscussionStateInitial value)? initial,
    TResult? Function(_SendingInProgress value)? sendingInProgress,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_DiscussionStateFailure value)? failure,
  }) {
    return messageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscussionStateInitial value)? initial,
    TResult Function(_SendingInProgress value)? sendingInProgress,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_DiscussionStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class _MessageSent implements DiscussionState {
  const factory _MessageSent(final Message message) = _$_MessageSent;

  Message get message;
  @JsonKey(ignore: true)
  _$$_MessageSentCopyWith<_$_MessageSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DiscussionStateFailureCopyWith<$Res> {
  factory _$$_DiscussionStateFailureCopyWith(_$_DiscussionStateFailure value,
          $Res Function(_$_DiscussionStateFailure) then) =
      __$$_DiscussionStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error, StackTrace stackTrace});
}

/// @nodoc
class __$$_DiscussionStateFailureCopyWithImpl<$Res>
    extends _$DiscussionStateCopyWithImpl<$Res, _$_DiscussionStateFailure>
    implements _$$_DiscussionStateFailureCopyWith<$Res> {
  __$$_DiscussionStateFailureCopyWithImpl(_$_DiscussionStateFailure _value,
      $Res Function(_$_DiscussionStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = null,
  }) {
    return _then(_$_DiscussionStateFailure(
      freezed == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$_DiscussionStateFailure implements _DiscussionStateFailure {
  const _$_DiscussionStateFailure(this.error, this.stackTrace);

  @override
  final Object? error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'DiscussionState.failure(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscussionStateFailure &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscussionStateFailureCopyWith<_$_DiscussionStateFailure> get copyWith =>
      __$$_DiscussionStateFailureCopyWithImpl<_$_DiscussionStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingInProgress,
    required TResult Function(Message message) messageSent,
    required TResult Function(Object? error, StackTrace stackTrace) failure,
  }) {
    return failure(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingInProgress,
    TResult? Function(Message message)? messageSent,
    TResult? Function(Object? error, StackTrace stackTrace)? failure,
  }) {
    return failure?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingInProgress,
    TResult Function(Message message)? messageSent,
    TResult Function(Object? error, StackTrace stackTrace)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiscussionStateInitial value) initial,
    required TResult Function(_SendingInProgress value) sendingInProgress,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_DiscussionStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscussionStateInitial value)? initial,
    TResult? Function(_SendingInProgress value)? sendingInProgress,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_DiscussionStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscussionStateInitial value)? initial,
    TResult Function(_SendingInProgress value)? sendingInProgress,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_DiscussionStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _DiscussionStateFailure implements DiscussionState {
  const factory _DiscussionStateFailure(
          final Object? error, final StackTrace stackTrace) =
      _$_DiscussionStateFailure;

  Object? get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$_DiscussionStateFailureCopyWith<_$_DiscussionStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
