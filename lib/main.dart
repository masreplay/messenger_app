import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:messenger_app/app.dart';
import 'package:messenger_app/firebase_options.dart';
import 'package:messenger_app/injectable.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // firebase initialization
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final storageDirectory = await getApplicationDocumentsDirectory();

  HydratedBloc.storage =
      await HydratedStorage.build(storageDirectory: storageDirectory);

  configureDependencies();

  runApp(
    HookedBlocConfigProvider(
      injector: () => getIt.get,
      builderCondition: (state) => state != null,
      listenerCondition: (state) => state != null,
      child: const MainApp(),
    ),
  );
}
