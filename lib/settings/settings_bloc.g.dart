// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettings _$$_AppSettingsFromJson(Map<String, dynamic> json) =>
    _$_AppSettings(
      locale: _$JsonConverterFromJson<String, Locale>(
          json['locale'], const LocalStringJsonConverter().fromJson),
      themeMode: json['themeMode'] == null
          ? ThemeMode.system
          : const ThemeModeStringJsonConverter()
              .fromJson(json['themeMode'] as String),
      imageCacheStatus: $enumDecodeNullable(
              _$ImageCacheStateEnumMap, json['imageCacheStatus']) ??
          ImageCacheState.enabled,
      seedColor: json['seedColor'] == null
          ? defaultSeedColor
          : const ColorStringJsonConverter()
              .fromJson(json['seedColor'] as String),
    );

Map<String, dynamic> _$$_AppSettingsToJson(_$_AppSettings instance) =>
    <String, dynamic>{
      'locale': _$JsonConverterToJson<String, Locale>(
          instance.locale, const LocalStringJsonConverter().toJson),
      'themeMode':
          const ThemeModeStringJsonConverter().toJson(instance.themeMode),
      'imageCacheStatus': _$ImageCacheStateEnumMap[instance.imageCacheStatus]!,
      'seedColor': const ColorStringJsonConverter().toJson(instance.seedColor),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$ImageCacheStateEnumMap = {
  ImageCacheState.enabled: 'enabled',
  ImageCacheState.disabled: 'disabled',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
