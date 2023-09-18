import 'package:auto_route/auto_route.dart';
import 'package:messenger_app/src/login/login_screen.dart';
import 'package:messenger_app/src/sign_up/sign_up_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        initial: true,
        page: LoginRoute.page,
      ),
      AutoRoute(
        path: '/sign-up',
        page: SignUpRoute.page,
      )
    ];
  }
}
