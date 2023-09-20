import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:messenger_app/router/auth_guard.dart';
import 'package:messenger_app/settings/settings_screen.dart';
import 'package:messenger_app/src/login/login_screen.dart';
import 'package:messenger_app/src/main/discussions/discussion_screen.dart';
import 'package:messenger_app/src/main/discussions/discussions_screen.dart';
import 'package:messenger_app/src/main/main_screen.dart';
import 'package:messenger_app/src/main/more_screen.dart';
import 'package:messenger_app/src/sign_up/sign_up_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        initial: true,
        page: MainRoute.page,
        guards: const [AuthenticatedGuard()],
        children: [
          AutoRoute(
            path: "discussions",
            page: DiscussionsRoute.page,
          ),
          AutoRoute(
            path: "more",
            page: MoreRoute.page,
          ),
        ],
      ),
      AutoRoute(
        path: "/login",
        page: LoginRoute.page,
        guards: const [NotAuthenticatedGuard()],
      ),
      AutoRoute(
        path: "/sign-up",
        page: SignUpRoute.page,
        guards: const [NotAuthenticatedGuard()],
      ),
      AutoRoute(
        path: "/discussions/:id",
        page: DiscussionRoute.page,
        guards: const [AuthenticatedGuard()],
      ),
      AutoRoute(
        path: "/settings",
        page: SettingsRoute.page,
        guards: const [AuthenticatedGuard()],
      ),
    ];
  }
}
