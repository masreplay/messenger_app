import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class AppTheme {
  const AppTheme({
    required this.locale,
    required this.seedColor,
  });

  final Locale locale;
  final Color seedColor;

  TextTheme Function([TextTheme? textTheme]) get _buildTextTheme {
    final textThemes = {
      const Locale("en"): GoogleFonts.jetBrainsMonoTextTheme,
      const Locale("ar"): GoogleFonts.ibmPlexSansArabicTextTheme,
    };

    return textThemes[locale] ?? GoogleFonts.ibmPlexSansArabicTextTheme;
  }

  ThemeData _buildTheme(Brightness brightness) {
    final colorScheme = ColorScheme.fromSeed(
      brightness: brightness,
      seedColor: seedColor,
    );

    final theme = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: colorScheme.background,
      colorScheme: colorScheme,
    );

    return theme.copyWith(
      textTheme: _buildTextTheme(theme.textTheme),
    );
  }

  ThemeData darkTheme() => _buildTheme(Brightness.dark);
  ThemeData lightTheme() => _buildTheme(Brightness.light);
}

Locale getDeviceLocale() {
  final locale = Platform.localeName;
  final languageCode = locale.split('_').elementAtOrNull(0);
  final countryCode = locale.split('_').elementAtOrNull(1);
  if (languageCode == null || countryCode == null) {
    return const Locale('en');
  }
  return Locale(languageCode, countryCode);
}
