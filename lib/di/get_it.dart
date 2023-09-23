import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'get_it.config.dart';

const Named firebaseImpl = Named("firebase");
const Named appImpl = firebaseImpl;

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();
