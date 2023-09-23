import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../src/widgets/image.dart';

part 'settings_bloc.freezed.dart';
part 'settings_bloc.g.dart';

class LocalStringJsonConverter extends JsonConverter<Locale, String> {
  const LocalStringJsonConverter();
  @override
  Locale fromJson(String json) {
    final parts = json.split("_");
    return Locale(parts.first, parts.lastOrNull);
  }

  @override
  String toJson(Locale object) => object.toString().split("_").first;
}

class ThemeModeStringJsonConverter extends JsonConverter<ThemeMode, String> {
  const ThemeModeStringJsonConverter();
  @override
  ThemeMode fromJson(String json) => switch (json) {
        'light' => ThemeMode.light,
        'dark' => ThemeMode.dark,
        _ => ThemeMode.system
      };
  @override
  String toJson(ThemeMode object) => object.name;
}

class ColorStringJsonConverter extends JsonConverter<Color, String> {
  const ColorStringJsonConverter();
  @override
  Color fromJson(String json) => Color(int.parse(json));
  @override
  String toJson(Color object) => object.value.toString();
}

const Color defaultSeedColor = Color(0xff7543F5);

@freezed
class AppSettings with _$AppSettings {
  const AppSettings._();
  @JsonSerializable(explicitToJson: true)
  factory AppSettings({
    @LocalStringJsonConverter() Locale? locale,
    @Default(ThemeMode.system)
    @ThemeModeStringJsonConverter()
    ThemeMode themeMode,
    @Default(ImageCacheState.enabled) ImageCacheState imageCacheStatus,
    @Default(defaultSeedColor) @ColorStringJsonConverter() Color seedColor,
  }) = _AppSettings;

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}

typedef SettingsState = AppSettings;

@injectable
class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(SettingsState());

  void setThemeMode(ThemeMode themeMode) =>
      emit(state.copyWith(themeMode: themeMode));

  void setLocale(Locale? locale) => emit(state.copyWith(locale: locale));

  void setSeedColor(Color seedColor) =>
      emit(state.copyWith(seedColor: seedColor));

  @override
  SettingsState fromJson(Map<String, dynamic> json) =>
      SettingsState.fromJson(json);

  @override
  Map<String, dynamic> toJson(SettingsState state) => state.toJson();
}
