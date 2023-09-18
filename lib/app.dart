import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:messenger_app/l10n/l10n.dart';
import 'package:messenger_app/router/app_router.dart';
import 'package:messenger_app/settings/settings_bloc.dart';
import 'package:messenger_app/theme.dart';

final _appRouter = AppRouter();

class MainApp extends HookWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, AppSettings>(
      bloc: BlocProvider.of<SettingsCubit>(context),
      buildWhen: (previous, current) => true,
      builder: (context, state) {
        final themeMode = state.themeMode;
        final locale = state.locale;
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
      },
    );
  }
}
