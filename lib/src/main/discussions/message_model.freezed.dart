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
  return _MessageText.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String get idFrom => throw _privateConstructorUsedError;
  String get idTo => throw _privateConstructorUsedError;
  @TimeStampJsonConverter()
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String idFrom, String idTo,
            @TimeStampJsonConverter() DateTime timestamp, String content)
        text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String idFrom, String idTo,
            @TimeStampJsonConverter() DateTime timestamp, String content)?
        text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String idFrom, String idTo,
            @TimeStampJsonConverter() DateTime timestamp, String content)?
        text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessageText value) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageText value)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageText value)? text,
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
  $Res call(
      {String idFrom,
      String idTo,
      @TimeStampJsonConverter() DateTime timestamp,
      String content});
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
    Object? content = null,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageTextCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageTextCopyWith(
          _$_MessageText value, $Res Function(_$_MessageText) then) =
      __$$_MessageTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String idFrom,
      String idTo,
      @TimeStampJsonConverter() DateTime timestamp,
      String content});
}

/// @nodoc
class __$$_MessageTextCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_MessageText>
    implements _$$_MessageTextCopyWith<$Res> {
  __$$_MessageTextCopyWithImpl(
      _$_MessageText _value, $Res Function(_$_MessageText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFrom = null,
    Object? idTo = null,
    Object? timestamp = null,
    Object? content = null,
  }) {
    return _then(_$_MessageText(
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
@JsonSerializable()
class _$_MessageText extends _MessageText {
  const _$_MessageText(
      {required this.idFrom,
      required this.idTo,
      @TimeStampJsonConverter() required this.timestamp,
      required this.content})
      : super._();

  factory _$_MessageText.fromJson(Map<String, dynamic> json) =>
      _$$_MessageTextFromJson(json);

  @override
  final String idFrom;
  @override
  final String idTo;
  @override
  @TimeStampJsonConverter()
  final DateTime timestamp;
  @override
  final String content;

  @override
  String toString() {
    return 'Message.text(idFrom: $idFrom, idTo: $idTo, timestamp: $timestamp, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageText &&
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
  _$$_MessageTextCopyWith<_$_MessageText> get copyWith =>
      __$$_MessageTextCopyWithImpl<_$_MessageText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String idFrom, String idTo,
            @TimeStampJsonConverter() DateTime timestamp, String content)
        text,
  }) {
    return text(idFrom, idTo, timestamp, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String idFrom, String idTo,
            @TimeStampJsonConverter() DateTime timestamp, String content)?
        text,
  }) {
    return text?.call(idFrom, idTo, timestamp, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String idFrom, String idTo,
            @TimeStampJsonConverter() DateTime timestamp, String content)?
        text,
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
    required TResult Function(_MessageText value) text,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessageText value)? text,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessageText value)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageTextToJson(
      this,
    );
  }
}

abstract class _MessageText extends Message {
  const factory _MessageText(
      {required final String idFrom,
      required final String idTo,
      @TimeStampJsonConverter() required final DateTime timestamp,
      required final String content}) = _$_MessageText;
  const _MessageText._() : super._();

  factory _MessageText.fromJson(Map<String, dynamic> json) =
      _$_MessageText.fromJson;

  @override
  String get idFrom;
  @override
  String get idTo;
  @override
  @TimeStampJsonConverter()
  DateTime get timestamp;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_MessageTextCopyWith<_$_MessageText> get copyWith =>
      throw _privateConstructorUsedError;
}
