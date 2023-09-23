// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DiscussionRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DiscussionRouteArgs>(
          orElse: () =>
              DiscussionRouteArgs(peerId: pathParams.getString('peerId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DiscussionScreen(
          key: args.key,
          peerId: args.peerId,
        ),
      );
    },
    ImageRoute.name: (routeData) {
      final args = routeData.argsAs<ImageRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ImageScreen(
          key: args.key,
          imageUrl: args.imageUrl,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    MoreRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MoreScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpScreen(),
      );
    },
    StickersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StickersScreen(),
      );
    },
    UsersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UsersScreen(),
      );
    },
  };
}

/// generated route for
/// [DiscussionScreen]
class DiscussionRoute extends PageRouteInfo<DiscussionRouteArgs> {
  DiscussionRoute({
    Key? key,
    required String peerId,
    List<PageRouteInfo>? children,
  }) : super(
          DiscussionRoute.name,
          args: DiscussionRouteArgs(
            key: key,
            peerId: peerId,
          ),
          rawPathParams: {'peerId': peerId},
          initialChildren: children,
        );

  static const String name = 'DiscussionRoute';

  static const PageInfo<DiscussionRouteArgs> page =
      PageInfo<DiscussionRouteArgs>(name);
}

class DiscussionRouteArgs {
  const DiscussionRouteArgs({
    this.key,
    required this.peerId,
  });

  final Key? key;

  final String peerId;

  @override
  String toString() {
    return 'DiscussionRouteArgs{key: $key, peerId: $peerId}';
  }
}

/// generated route for
/// [ImageScreen]
class ImageRoute extends PageRouteInfo<ImageRouteArgs> {
  ImageRoute({
    Key? key,
    required String imageUrl,
    List<PageRouteInfo>? children,
  }) : super(
          ImageRoute.name,
          args: ImageRouteArgs(
            key: key,
            imageUrl: imageUrl,
          ),
          initialChildren: children,
        );

  static const String name = 'ImageRoute';

  static const PageInfo<ImageRouteArgs> page = PageInfo<ImageRouteArgs>(name);
}

class ImageRouteArgs {
  const ImageRouteArgs({
    this.key,
    required this.imageUrl,
  });

  final Key? key;

  final String imageUrl;

  @override
  String toString() {
    return 'ImageRouteArgs{key: $key, imageUrl: $imageUrl}';
  }
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MoreScreen]
class MoreRoute extends PageRouteInfo<void> {
  const MoreRoute({List<PageRouteInfo>? children})
      : super(
          MoreRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoreRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpScreen]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StickersScreen]
class StickersRoute extends PageRouteInfo<void> {
  const StickersRoute({List<PageRouteInfo>? children})
      : super(
          StickersRoute.name,
          initialChildren: children,
        );

  static const String name = 'StickersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UsersScreen]
class UsersRoute extends PageRouteInfo<void> {
  const UsersRoute({List<PageRouteInfo>? children})
      : super(
          UsersRoute.name,
          initialChildren: children,
        );

  static const String name = 'UsersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
