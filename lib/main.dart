import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:messenger_app/app.dart';
import 'package:messenger_app/firebase_options.dart';
import 'package:messenger_app/get_it.dart';
import 'package:messenger_app/settings/settings_bloc.dart';
import 'package:messenger_app/src/main/discussions/stickers_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final storageDirectory = await getApplicationDocumentsDirectory();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: storageDirectory,
  );

  configureDependencies();

  runApp(
    HookedBlocConfigProvider(
      injector: () => getIt.get,
      builderCondition: (state) => state != null,
      listenerCondition: (state) => state != null,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt.get<SettingsCubit>()),
          BlocProvider(create: (_) => getIt.get<StickersCubit>()),
        ],
        child: const MainApp(),
      ),
    ),
  );
}
