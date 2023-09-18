import 'package:flutter/material.dart';
import 'package:messenger_app/l10n/l10n.dart';
import 'package:messenger_app/router/app_router.dart';
import 'package:messenger_app/theme.dart';

final _appRouter = AppRouter();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const ThemeMode themeMode = ThemeMode.dark;
    const Locale locale = Locale("ar");

    final theme = AppTheme(locale ?? getDeviceLocale());

    return MaterialApp.router(
      title: 'Messenger App',
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      themeMode: themeMode,
      theme: theme.lightTheme(),
      darkTheme: theme.darkTheme(),
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
