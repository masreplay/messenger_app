import 'package:messenger_app/common_lib.dart';

const defaultInitialRoute = MainRoute();
const defaultAuthRoute = LoginRoute();

extension StackRouterX on StackRouter {
  Future<Object?> replaceInitialRoute() => replace(defaultInitialRoute);
  Future<Object?> replaceAuthRoute() => replace(defaultAuthRoute);
}
