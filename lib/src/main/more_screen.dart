import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/src/main/discussions/discussions_screen.dart';

@RoutePage()
class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final user = FirebaseAuth.instance.currentUser!;

    final email = user.email!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.more),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(user.displayName ?? ""),
            subtitle: Text(email),
            leading: UserAvatar(photoURL: user.photoURL, alt: email),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                context.showUnimplementedSnackBar();
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(l10n.settings),
            onTap: () {
              context.router.push(const SettingsRoute());
            },
          ),
          if (kDebugMode)
            ListTile(
              leading: const Icon(Icons.sticky_note_2),
              title: const Text("Stickers"),
              onTap: () {
                context.router.push(const StickersRoute());
              },
            ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: Text(l10n.logout),
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              if (mounted) {
                context.router.replace(const LoginRoute());
              }
            },
          ),
        ],
      ),
    );
  }
}
