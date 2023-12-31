// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sticker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sticker _$StickerFromJson(Map<String, dynamic> json) {
  return _Sticker.fromJson(json);
}

/// @nodoc
mixin _$Sticker {
  String get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get emoji => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StickerCopyWith<Sticker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickerCopyWith<$Res> {
  factory $StickerCopyWith(Sticker value, $Res Function(Sticker) then) =
      _$StickerCopyWithImpl<$Res, Sticker>;
  @useResult
  $Res call({String id, String nickname, String path, String emoji});
}

/// @nodoc
class _$StickerCopyWithImpl<$Res, $Val extends Sticker>
    implements $StickerCopyWith<$Res> {
  _$StickerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? path = null,
    Object? emoji = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StickerCopyWith<$Res> implements $StickerCopyWith<$Res> {
  factory _$$_StickerCopyWith(
          _$_Sticker value, $Res Function(_$_Sticker) then) =
      __$$_StickerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String nickname, String path, String emoji});
}

/// @nodoc
class __$$_StickerCopyWithImpl<$Res>
    extends _$StickerCopyWithImpl<$Res, _$_Sticker>
    implements _$$_StickerCopyWith<$Res> {
  __$$_StickerCopyWithImpl(_$_Sticker _value, $Res Function(_$_Sticker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? path = null,
    Object? emoji = null,
  }) {
    return _then(_$_Sticker(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sticker extends _Sticker {
  _$_Sticker(
      {required this.id,
      required this.nickname,
      required this.path,
      required this.emoji})
      : super._();

  factory _$_Sticker.fromJson(Map<String, dynamic> json) =>
      _$$_StickerFromJson(json);

  @override
  final String id;
  @override
  final String nickname;
  @override
  final String path;
  @override
  final String emoji;

  @override
  String toString() {
    return 'Sticker(id: $id, nickname: $nickname, path: $path, emoji: $emoji)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sticker &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.emoji, emoji) || other.emoji == emoji));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nickname, path, emoji);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StickerCopyWith<_$_Sticker> get copyWith =>
      __$$_StickerCopyWithImpl<_$_Sticker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StickerToJson(
      this,
    );
  }
}

abstract class _Sticker extends Sticker {
  factory _Sticker(
      {required final String id,
      required final String nickname,
      required final String path,
      required final String emoji}) = _$_Sticker;
  _Sticker._() : super._();

  factory _Sticker.fromJson(Map<String, dynamic> json) = _$_Sticker.fromJson;

  @override
  String get id;
  @override
  String get nickname;
  @override
  String get path;
  @override
  String get emoji;
  @override
  @JsonKey(ignore: true)
  _$$_StickerCopyWith<_$_Sticker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StickerAdd {
  String get nickname => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get emoji => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StickerAddCopyWith<StickerAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickerAddCopyWith<$Res> {
  factory $StickerAddCopyWith(
          StickerAdd value, $Res Function(StickerAdd) then) =
      _$StickerAddCopyWithImpl<$Res, StickerAdd>;
  @useResult
  $Res call({String nickname, String path, String emoji});
}

/// @nodoc
class _$StickerAddCopyWithImpl<$Res, $Val extends StickerAdd>
    implements $StickerAddCopyWith<$Res> {
  _$StickerAddCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? path = null,
    Object? emoji = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StickerAddCopyWith<$Res>
    implements $StickerAddCopyWith<$Res> {
  factory _$$_StickerAddCopyWith(
          _$_StickerAdd value, $Res Function(_$_StickerAdd) then) =
      __$$_StickerAddCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname, String path, String emoji});
}

/// @nodoc
class __$$_StickerAddCopyWithImpl<$Res>
    extends _$StickerAddCopyWithImpl<$Res, _$_StickerAdd>
    implements _$$_StickerAddCopyWith<$Res> {
  __$$_StickerAddCopyWithImpl(
      _$_StickerAdd _value, $Res Function(_$_StickerAdd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? path = null,
    Object? emoji = null,
  }) {
    return _then(_$_StickerAdd(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_StickerAdd extends _StickerAdd {
  _$_StickerAdd(
      {required this.nickname, required this.path, required this.emoji})
      : super._();

  @override
  final String nickname;
  @override
  final String path;
  @override
  final String emoji;

  @override
  String toString() {
    return 'StickerAdd(nickname: $nickname, path: $path, emoji: $emoji)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StickerAdd &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.emoji, emoji) || other.emoji == emoji));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, path, emoji);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StickerAddCopyWith<_$_StickerAdd> get copyWith =>
      __$$_StickerAddCopyWithImpl<_$_StickerAdd>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StickerAddToJson(
      this,
    );
  }
}

abstract class _StickerAdd extends StickerAdd {
  factory _StickerAdd(
      {required final String nickname,
      required final String path,
      required final String emoji}) = _$_StickerAdd;
  _StickerAdd._() : super._();

  @override
  String get nickname;
  @override
  String get path;
  @override
  String get emoji;
  @override
  @JsonKey(ignore: true)
  _$$_StickerAddCopyWith<_$_StickerAdd> get copyWith =>
      throw _privateConstructorUsedError;
}
