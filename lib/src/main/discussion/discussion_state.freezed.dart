// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discussion_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscussionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingInProgress,
    required TResult Function(Message message) messageDeleted,
    required TResult Function(Message message) messageSent,
    required TResult Function(Object? error, StackTrace stackTrace) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingInProgress,
    TResult? Function(Message message)? messageDeleted,
    TResult? Function(Message message)? messageSent,
    TResult? Function(Object? error, StackTrace stackTrace)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingInProgress,
    TResult Function(Message message)? messageDeleted,
    TResult Function(Message message)? messageSent,
    TResult Function(Object? error, StackTrace stackTrace)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiscussionStateInitial value) initial,
    required TResult Function(DiscussionStateSendingInProgress value)
        sendingInProgress,
    required TResult Function(DiscussionStateDeleted value) messageDeleted,
    required TResult Function(DiscussionStateMessageSent value) messageSent,
    required TResult Function(DiscussionStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscussionStateInitial value)? initial,
    TResult? Function(DiscussionStateSendingInProgress value)?
        sendingInProgress,
    TResult? Function(DiscussionStateDeleted value)? messageDeleted,
    TResult? Function(DiscussionStateMessageSent value)? messageSent,
    TResult? Function(DiscussionStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscussionStateInitial value)? initial,
    TResult Function(DiscussionStateSendingInProgress value)? sendingInProgress,
    TResult Function(DiscussionStateDeleted value)? messageDeleted,
    TResult Function(DiscussionStateMessageSent value)? messageSent,
    TResult Function(DiscussionStateFailure value)? failure,
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
abstract class _$$DiscussionStateInitialCopyWith<$Res> {
  factory _$$DiscussionStateInitialCopyWith(_$DiscussionStateInitial value,
          $Res Function(_$DiscussionStateInitial) then) =
      __$$DiscussionStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DiscussionStateInitialCopyWithImpl<$Res>
    extends _$DiscussionStateCopyWithImpl<$Res, _$DiscussionStateInitial>
    implements _$$DiscussionStateInitialCopyWith<$Res> {
  __$$DiscussionStateInitialCopyWithImpl(_$DiscussionStateInitial _value,
      $Res Function(_$DiscussionStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DiscussionStateInitial implements DiscussionStateInitial {
  const _$DiscussionStateInitial();

  @override
  String toString() {
    return 'DiscussionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DiscussionStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingInProgress,
    required TResult Function(Message message) messageDeleted,
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
    TResult? Function(Message message)? messageDeleted,
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
    TResult Function(Message message)? messageDeleted,
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
    required TResult Function(DiscussionStateInitial value) initial,
    required TResult Function(DiscussionStateSendingInProgress value)
        sendingInProgress,
    required TResult Function(DiscussionStateDeleted value) messageDeleted,
    required TResult Function(DiscussionStateMessageSent value) messageSent,
    required TResult Function(DiscussionStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscussionStateInitial value)? initial,
    TResult? Function(DiscussionStateSendingInProgress value)?
        sendingInProgress,
    TResult? Function(DiscussionStateDeleted value)? messageDeleted,
    TResult? Function(DiscussionStateMessageSent value)? messageSent,
    TResult? Function(DiscussionStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscussionStateInitial value)? initial,
    TResult Function(DiscussionStateSendingInProgress value)? sendingInProgress,
    TResult Function(DiscussionStateDeleted value)? messageDeleted,
    TResult Function(DiscussionStateMessageSent value)? messageSent,
    TResult Function(DiscussionStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DiscussionStateInitial implements DiscussionState {
  const factory DiscussionStateInitial() = _$DiscussionStateInitial;
}

/// @nodoc
abstract class _$$DiscussionStateSendingInProgressCopyWith<$Res> {
  factory _$$DiscussionStateSendingInProgressCopyWith(
          _$DiscussionStateSendingInProgress value,
          $Res Function(_$DiscussionStateSendingInProgress) then) =
      __$$DiscussionStateSendingInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DiscussionStateSendingInProgressCopyWithImpl<$Res>
    extends _$DiscussionStateCopyWithImpl<$Res,
        _$DiscussionStateSendingInProgress>
    implements _$$DiscussionStateSendingInProgressCopyWith<$Res> {
  __$$DiscussionStateSendingInProgressCopyWithImpl(
      _$DiscussionStateSendingInProgress _value,
      $Res Function(_$DiscussionStateSendingInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DiscussionStateSendingInProgress
    implements DiscussionStateSendingInProgress {
  const _$DiscussionStateSendingInProgress();

  @override
  String toString() {
    return 'DiscussionState.sendingInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionStateSendingInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingInProgress,
    required TResult Function(Message message) messageDeleted,
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
    TResult? Function(Message message)? messageDeleted,
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
    TResult Function(Message message)? messageDeleted,
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
    required TResult Function(DiscussionStateInitial value) initial,
    required TResult Function(DiscussionStateSendingInProgress value)
        sendingInProgress,
    required TResult Function(DiscussionStateDeleted value) messageDeleted,
    required TResult Function(DiscussionStateMessageSent value) messageSent,
    required TResult Function(DiscussionStateFailure value) failure,
  }) {
    return sendingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscussionStateInitial value)? initial,
    TResult? Function(DiscussionStateSendingInProgress value)?
        sendingInProgress,
    TResult? Function(DiscussionStateDeleted value)? messageDeleted,
    TResult? Function(DiscussionStateMessageSent value)? messageSent,
    TResult? Function(DiscussionStateFailure value)? failure,
  }) {
    return sendingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscussionStateInitial value)? initial,
    TResult Function(DiscussionStateSendingInProgress value)? sendingInProgress,
    TResult Function(DiscussionStateDeleted value)? messageDeleted,
    TResult Function(DiscussionStateMessageSent value)? messageSent,
    TResult Function(DiscussionStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (sendingInProgress != null) {
      return sendingInProgress(this);
    }
    return orElse();
  }
}

abstract class DiscussionStateSendingInProgress implements DiscussionState {
  const factory DiscussionStateSendingInProgress() =
      _$DiscussionStateSendingInProgress;
}

/// @nodoc
abstract class _$$DiscussionStateDeletedCopyWith<$Res> {
  factory _$$DiscussionStateDeletedCopyWith(_$DiscussionStateDeleted value,
          $Res Function(_$DiscussionStateDeleted) then) =
      __$$DiscussionStateDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$DiscussionStateDeletedCopyWithImpl<$Res>
    extends _$DiscussionStateCopyWithImpl<$Res, _$DiscussionStateDeleted>
    implements _$$DiscussionStateDeletedCopyWith<$Res> {
  __$$DiscussionStateDeletedCopyWithImpl(_$DiscussionStateDeleted _value,
      $Res Function(_$DiscussionStateDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DiscussionStateDeleted(
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

class _$DiscussionStateDeleted implements DiscussionStateDeleted {
  const _$DiscussionStateDeleted(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'DiscussionState.messageDeleted(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionStateDeleted &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionStateDeletedCopyWith<_$DiscussionStateDeleted> get copyWith =>
      __$$DiscussionStateDeletedCopyWithImpl<_$DiscussionStateDeleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingInProgress,
    required TResult Function(Message message) messageDeleted,
    required TResult Function(Message message) messageSent,
    required TResult Function(Object? error, StackTrace stackTrace) failure,
  }) {
    return messageDeleted(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingInProgress,
    TResult? Function(Message message)? messageDeleted,
    TResult? Function(Message message)? messageSent,
    TResult? Function(Object? error, StackTrace stackTrace)? failure,
  }) {
    return messageDeleted?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingInProgress,
    TResult Function(Message message)? messageDeleted,
    TResult Function(Message message)? messageSent,
    TResult Function(Object? error, StackTrace stackTrace)? failure,
    required TResult orElse(),
  }) {
    if (messageDeleted != null) {
      return messageDeleted(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiscussionStateInitial value) initial,
    required TResult Function(DiscussionStateSendingInProgress value)
        sendingInProgress,
    required TResult Function(DiscussionStateDeleted value) messageDeleted,
    required TResult Function(DiscussionStateMessageSent value) messageSent,
    required TResult Function(DiscussionStateFailure value) failure,
  }) {
    return messageDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscussionStateInitial value)? initial,
    TResult? Function(DiscussionStateSendingInProgress value)?
        sendingInProgress,
    TResult? Function(DiscussionStateDeleted value)? messageDeleted,
    TResult? Function(DiscussionStateMessageSent value)? messageSent,
    TResult? Function(DiscussionStateFailure value)? failure,
  }) {
    return messageDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscussionStateInitial value)? initial,
    TResult Function(DiscussionStateSendingInProgress value)? sendingInProgress,
    TResult Function(DiscussionStateDeleted value)? messageDeleted,
    TResult Function(DiscussionStateMessageSent value)? messageSent,
    TResult Function(DiscussionStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (messageDeleted != null) {
      return messageDeleted(this);
    }
    return orElse();
  }
}

abstract class DiscussionStateDeleted implements DiscussionState {
  const factory DiscussionStateDeleted(final Message message) =
      _$DiscussionStateDeleted;

  Message get message;
  @JsonKey(ignore: true)
  _$$DiscussionStateDeletedCopyWith<_$DiscussionStateDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DiscussionStateMessageSentCopyWith<$Res> {
  factory _$$DiscussionStateMessageSentCopyWith(
          _$DiscussionStateMessageSent value,
          $Res Function(_$DiscussionStateMessageSent) then) =
      __$$DiscussionStateMessageSentCopyWithImpl<$Res>;
  @useResult
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$DiscussionStateMessageSentCopyWithImpl<$Res>
    extends _$DiscussionStateCopyWithImpl<$Res, _$DiscussionStateMessageSent>
    implements _$$DiscussionStateMessageSentCopyWith<$Res> {
  __$$DiscussionStateMessageSentCopyWithImpl(
      _$DiscussionStateMessageSent _value,
      $Res Function(_$DiscussionStateMessageSent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DiscussionStateMessageSent(
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

class _$DiscussionStateMessageSent implements DiscussionStateMessageSent {
  const _$DiscussionStateMessageSent(this.message);

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
            other is _$DiscussionStateMessageSent &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionStateMessageSentCopyWith<_$DiscussionStateMessageSent>
      get copyWith => __$$DiscussionStateMessageSentCopyWithImpl<
          _$DiscussionStateMessageSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingInProgress,
    required TResult Function(Message message) messageDeleted,
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
    TResult? Function(Message message)? messageDeleted,
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
    TResult Function(Message message)? messageDeleted,
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
    required TResult Function(DiscussionStateInitial value) initial,
    required TResult Function(DiscussionStateSendingInProgress value)
        sendingInProgress,
    required TResult Function(DiscussionStateDeleted value) messageDeleted,
    required TResult Function(DiscussionStateMessageSent value) messageSent,
    required TResult Function(DiscussionStateFailure value) failure,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscussionStateInitial value)? initial,
    TResult? Function(DiscussionStateSendingInProgress value)?
        sendingInProgress,
    TResult? Function(DiscussionStateDeleted value)? messageDeleted,
    TResult? Function(DiscussionStateMessageSent value)? messageSent,
    TResult? Function(DiscussionStateFailure value)? failure,
  }) {
    return messageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscussionStateInitial value)? initial,
    TResult Function(DiscussionStateSendingInProgress value)? sendingInProgress,
    TResult Function(DiscussionStateDeleted value)? messageDeleted,
    TResult Function(DiscussionStateMessageSent value)? messageSent,
    TResult Function(DiscussionStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class DiscussionStateMessageSent implements DiscussionState {
  const factory DiscussionStateMessageSent(final Message message) =
      _$DiscussionStateMessageSent;

  Message get message;
  @JsonKey(ignore: true)
  _$$DiscussionStateMessageSentCopyWith<_$DiscussionStateMessageSent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DiscussionStateFailureCopyWith<$Res> {
  factory _$$DiscussionStateFailureCopyWith(_$DiscussionStateFailure value,
          $Res Function(_$DiscussionStateFailure) then) =
      __$$DiscussionStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error, StackTrace stackTrace});
}

/// @nodoc
class __$$DiscussionStateFailureCopyWithImpl<$Res>
    extends _$DiscussionStateCopyWithImpl<$Res, _$DiscussionStateFailure>
    implements _$$DiscussionStateFailureCopyWith<$Res> {
  __$$DiscussionStateFailureCopyWithImpl(_$DiscussionStateFailure _value,
      $Res Function(_$DiscussionStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = null,
  }) {
    return _then(_$DiscussionStateFailure(
      freezed == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$DiscussionStateFailure implements DiscussionStateFailure {
  const _$DiscussionStateFailure(this.error, this.stackTrace);

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
            other is _$DiscussionStateFailure &&
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
  _$$DiscussionStateFailureCopyWith<_$DiscussionStateFailure> get copyWith =>
      __$$DiscussionStateFailureCopyWithImpl<_$DiscussionStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingInProgress,
    required TResult Function(Message message) messageDeleted,
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
    TResult? Function(Message message)? messageDeleted,
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
    TResult Function(Message message)? messageDeleted,
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
    required TResult Function(DiscussionStateInitial value) initial,
    required TResult Function(DiscussionStateSendingInProgress value)
        sendingInProgress,
    required TResult Function(DiscussionStateDeleted value) messageDeleted,
    required TResult Function(DiscussionStateMessageSent value) messageSent,
    required TResult Function(DiscussionStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscussionStateInitial value)? initial,
    TResult? Function(DiscussionStateSendingInProgress value)?
        sendingInProgress,
    TResult? Function(DiscussionStateDeleted value)? messageDeleted,
    TResult? Function(DiscussionStateMessageSent value)? messageSent,
    TResult? Function(DiscussionStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscussionStateInitial value)? initial,
    TResult Function(DiscussionStateSendingInProgress value)? sendingInProgress,
    TResult Function(DiscussionStateDeleted value)? messageDeleted,
    TResult Function(DiscussionStateMessageSent value)? messageSent,
    TResult Function(DiscussionStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class DiscussionStateFailure implements DiscussionState {
  const factory DiscussionStateFailure(
          final Object? error, final StackTrace stackTrace) =
      _$DiscussionStateFailure;

  Object? get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$DiscussionStateFailureCopyWith<_$DiscussionStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
