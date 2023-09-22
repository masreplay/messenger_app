// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppSettings _$AppSettingsFromJson(Map<String, dynamic> json) {
  return _AppSettings.fromJson(json);
}

/// @nodoc
mixin _$AppSettings {
  @LocalStringJsonConverter()
  Locale? get locale => throw _privateConstructorUsedError;
  @ThemeModeStringJsonConverter()
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  ImageCacheState get imageCacheStatus => throw _privateConstructorUsedError;
  @ColorStringJsonConverter()
  Color get seedColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingsCopyWith<AppSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsCopyWith<$Res> {
  factory $AppSettingsCopyWith(
          AppSettings value, $Res Function(AppSettings) then) =
      _$AppSettingsCopyWithImpl<$Res, AppSettings>;
  @useResult
  $Res call(
      {@LocalStringJsonConverter() Locale? locale,
      @ThemeModeStringJsonConverter() ThemeMode themeMode,
      ImageCacheState imageCacheStatus,
      @ColorStringJsonConverter() Color seedColor});
}

/// @nodoc
class _$AppSettingsCopyWithImpl<$Res, $Val extends AppSettings>
    implements $AppSettingsCopyWith<$Res> {
  _$AppSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = freezed,
    Object? themeMode = null,
    Object? imageCacheStatus = null,
    Object? seedColor = null,
  }) {
    return _then(_value.copyWith(
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      imageCacheStatus: null == imageCacheStatus
          ? _value.imageCacheStatus
          : imageCacheStatus // ignore: cast_nullable_to_non_nullable
              as ImageCacheState,
      seedColor: null == seedColor
          ? _value.seedColor
          : seedColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppSettingsCopyWith<$Res>
    implements $AppSettingsCopyWith<$Res> {
  factory _$$_AppSettingsCopyWith(
          _$_AppSettings value, $Res Function(_$_AppSettings) then) =
      __$$_AppSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@LocalStringJsonConverter() Locale? locale,
      @ThemeModeStringJsonConverter() ThemeMode themeMode,
      ImageCacheState imageCacheStatus,
      @ColorStringJsonConverter() Color seedColor});
}

/// @nodoc
class __$$_AppSettingsCopyWithImpl<$Res>
    extends _$AppSettingsCopyWithImpl<$Res, _$_AppSettings>
    implements _$$_AppSettingsCopyWith<$Res> {
  __$$_AppSettingsCopyWithImpl(
      _$_AppSettings _value, $Res Function(_$_AppSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = freezed,
    Object? themeMode = null,
    Object? imageCacheStatus = null,
    Object? seedColor = null,
  }) {
    return _then(_$_AppSettings(
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      imageCacheStatus: null == imageCacheStatus
          ? _value.imageCacheStatus
          : imageCacheStatus // ignore: cast_nullable_to_non_nullable
              as ImageCacheState,
      seedColor: null == seedColor
          ? _value.seedColor
          : seedColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AppSettings extends _AppSettings {
  _$_AppSettings(
      {@LocalStringJsonConverter() this.locale,
      @ThemeModeStringJsonConverter() this.themeMode = ThemeMode.system,
      this.imageCacheStatus = ImageCacheState.enabled,
      @ColorStringJsonConverter() this.seedColor = defaultSeedColor})
      : super._();

  factory _$_AppSettings.fromJson(Map<String, dynamic> json) =>
      _$$_AppSettingsFromJson(json);

  @override
  @LocalStringJsonConverter()
  final Locale? locale;
  @override
  @JsonKey()
  @ThemeModeStringJsonConverter()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final ImageCacheState imageCacheStatus;
  @override
  @JsonKey()
  @ColorStringJsonConverter()
  final Color seedColor;

  @override
  String toString() {
    return 'AppSettings(locale: $locale, themeMode: $themeMode, imageCacheStatus: $imageCacheStatus, seedColor: $seedColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSettings &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.imageCacheStatus, imageCacheStatus) ||
                other.imageCacheStatus == imageCacheStatus) &&
            (identical(other.seedColor, seedColor) ||
                other.seedColor == seedColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, locale, themeMode, imageCacheStatus, seedColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppSettingsCopyWith<_$_AppSettings> get copyWith =>
      __$$_AppSettingsCopyWithImpl<_$_AppSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppSettingsToJson(
      this,
    );
  }
}

abstract class _AppSettings extends AppSettings {
  factory _AppSettings(
      {@LocalStringJsonConverter() final Locale? locale,
      @ThemeModeStringJsonConverter() final ThemeMode themeMode,
      final ImageCacheState imageCacheStatus,
      @ColorStringJsonConverter() final Color seedColor}) = _$_AppSettings;
  _AppSettings._() : super._();

  factory _AppSettings.fromJson(Map<String, dynamic> json) =
      _$_AppSettings.fromJson;

  @override
  @LocalStringJsonConverter()
  Locale? get locale;
  @override
  @ThemeModeStringJsonConverter()
  ThemeMode get themeMode;
  @override
  ImageCacheState get imageCacheStatus;
  @override
  @ColorStringJsonConverter()
  Color get seedColor;
  @override
  @JsonKey(ignore: true)
  _$$_AppSettingsCopyWith<_$_AppSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
