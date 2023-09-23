import 'package:flutter/material.dart';
import 'package:messenger_app/common_lib.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final routes = [
      (
        route: const UsersRoute(),
        name: l10n.discussions,
        icon: Icons.message_outlined,
      ),
      (
        route: const MoreRoute(),
        name: l10n.more,
        icon: Icons.more_horiz_outlined,
      ),
    ];

    return AutoTabsRouter(
      routes: [for (final item in routes) item.route],
      transitionBuilder: (context, child, animation) {
        final tabsRouter = context.tabsRouter;

        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: NavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: tabsRouter.setActiveIndex,
            destinations: [
              for (final item in routes)
                NavigationDestination(
                  label: item.name,
                  icon: Icon(item.icon),
                ),
            ],
          ),
        );
      },
    );
  }
}
