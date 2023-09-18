import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:messenger_app/l10n/l10n.dart';
import 'package:messenger_app/router/app_router.dart';
import 'package:messenger_app/settings/settings_bloc.dart';
import 'package:messenger_app/theme.dart';

final _appRouter = AppRouter();

class MainApp extends HookWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = useBloc<SettingsCubit>().state;
    final themeMode = settings.theme;
    final locale = settings.locale;

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
