import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/settings/settings_bloc.dart';
import 'package:messenger_app/src/main/discussions/discussions_screen.dart';

@RoutePage()
class SettingsScreen extends HookWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = BlocProvider.of<SettingsCubit>(context);

    final l10n = AppLocalizations.of(context)!;
    final List<Color> colors = [
      defaultSeedColor,
      ...Colors.primaries,
    ];

    return BlocBuilder<SettingsCubit, SettingsState>(
      bloc: settings,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(l10n.settings),
          ),
          body: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.language),
                title: Text(l10n.language),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return SimpleDialog(
                            title: Text(l10n.language),
                            children: [
                              ListTile(
                                title: Text(l10n.deviceLanguage),
                                selected: settings.state.locale == null,
                                onTap: () {
                                  settings.setLocale(null);
                                },
                              ),
                              for (final item in _getLanguages())
                                ListTile(
                                  title: Text(
                                    item.name,
                                    style: item.style,
                                  ),
                                  selected:
                                      settings.state.locale == item.locale,
                                  onTap: () {
                                    setState(() {
                                      settings.setLocale(item.locale);
                                    });
                                  },
                                ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.color_lens),
                title: Text(l10n.theme),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(builder: (context, setState) {
                        return SimpleDialog(
                          title: Text(l10n.theme),
                          children: [
                            for (final item in _getThemes(l10n))
                              ListTile(
                                title: Text(item.name),
                                leading: Icon(item.icon),
                                selected: settings.state.themeMode == item.mode,
                                onTap: () {
                                  setState(() {
                                    settings.setThemeMode(item.mode);
                                  });
                                },
                              ),
                          ],
                        );
                      });
                    },
                  );
                },
              ),
              Wrap(
                children: colors.map((e) {
                  final borderRadius = BorderRadius.circular(16);
                  final selected = state.seedColor == e;
                  final foregroundColor = estimateForegroundColor(e);

                  return InkWell(
                    borderRadius: borderRadius,
                    onTap: () => settings.setSeedColor(e),
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: e,
                        borderRadius: borderRadius,
                      ),
                      width: 50,
                      height: 50,
                      child: selected
                          ? Icon(Icons.check, color: foregroundColor)
                          : null,
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        );
      },
    );
  }
}

List<({Locale locale, String name, TextStyle style})> _getLanguages() {
  return [
    (
      locale: const Locale('en'),
      name: 'English',
      style: GoogleFonts.jetBrainsMono(),
    ),
    (
      locale: const Locale('ar'),
      name: 'العربية',
      style: GoogleFonts.ibmPlexSansArabic(),
    ),
  ];
}

List<({IconData icon, ThemeMode mode, String name})> _getThemes(
        AppLocalizations l10n) =>
    [
      (
        name: l10n.systemTheme,
        icon: Icons.brightness_auto,
        mode: ThemeMode.system,
      ),
      (
        name: l10n.lightTheme,
        icon: Icons.brightness_low,
        mode: ThemeMode.light,
      ),
      (
        name: l10n.darkTheme,
        icon: Icons.brightness_high,
        mode: ThemeMode.dark,
      )
    ];
