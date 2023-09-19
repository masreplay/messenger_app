import 'package:firebase_auth/firebase_auth.dart';
import 'package:messenger_app/common_lib.dart';

import 'extension.dart';

class AuthenticatedGuard extends AutoRouteGuard {
  const AuthenticatedGuard();
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final auth = FirebaseAuth.instance.currentUser;
    if (auth == null) {
      router.push(defaultAuthRoute);
    } else {
      resolver.next(true);
    }
  }
}

class NotAuthenticatedGuard extends AutoRouteGuard {
  const NotAuthenticatedGuard();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final auth = FirebaseAuth.instance.currentUser;
    if (auth == null) {
      resolver.next(true);
    } else {
      router.push(defaultInitialRoute);
    }
  }
}
