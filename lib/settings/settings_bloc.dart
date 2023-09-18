import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

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

@freezed
class AppSettings with _$AppSettings {
  @JsonSerializable(explicitToJson: true)
  factory AppSettings({
    @LocalStringJsonConverter() Locale? locale,
    @Default(ThemeMode.system)
    @ThemeModeStringJsonConverter()
    ThemeMode themeMode,
  }) = _AppSettings;

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}

@injectable
class SettingsCubit extends HydratedCubit<AppSettings> {
  SettingsCubit() : super(AppSettings());

  void setThemeMode(ThemeMode themeMode) =>
      emit(state.copyWith(themeMode: themeMode));

  void setLocale(Locale? locale) => emit(state.copyWith(locale: locale));

  @override
  AppSettings fromJson(Map<String, dynamic> json) => AppSettings.fromJson(json);

  @override
  Map<String, dynamic> toJson(AppSettings state) => state.toJson();
}
