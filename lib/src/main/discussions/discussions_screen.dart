import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/models/user.dart';

@RoutePage()
class DiscussionsScreen extends StatefulWidget {
  const DiscussionsScreen({super.key});

  @override
  State<DiscussionsScreen> createState() => _DiscussionsScreenState();
}

class _DiscussionsScreenState extends State<DiscussionsScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.discussions),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('users')
            .limit(10)
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else {
            final docs = snapshot.data?.docs
                    .map((e) => UserData.fromJson(e.data()))
                    .toList() ??
                [];

            return ListView.builder(
              padding: const EdgeInsets.all(10.0),
              itemBuilder: (context, index) {
                final chat = docs[index];
                return DiscussionListTile(
                  data: chat,
                  onTap: () {},
                );
              },
              itemCount: docs.length,
            );
          }
        },
      ),
    );
  }
}

class DiscussionListTile extends StatelessWidget {
  const DiscussionListTile({
    super.key,
    required this.data,
    required this.onTap,
  });

  final UserData data;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final email = data.email;

    return ListTile(
      onTap: onTap,
      title: Text(data.name ?? ''),
      subtitle: Text(email),
      leading: UserAvatar(
        alt: email,
        photoURL: data.avatar,
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.alt,
    required this.photoURL,
  });

  /// Random text to replace the avatar if the user doesn't have one
  final String alt;
  final String? photoURL;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    const colors = Colors.primaries;
    final backgroundColor = colors.elementAt(alt.hashCode % colors.length);
    final foregroundColor = estimateForegroundColor(backgroundColor);

    return photoURL == null
        ? Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              color: backgroundColor,
              shape: BoxShape.circle,
              border: Border.all(
                color: colorScheme.outline,
                width: 1.0,
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              alt.substring(0, 2).toUpperCase(),
              style: TextStyle(
                color: foregroundColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : CircleAvatar(
            backgroundImage: NetworkImage(photoURL!),
          );
  }
}

Color estimateForegroundColor(Color backgroundColor) =>
    switch (ThemeData.estimateBrightnessForColor(backgroundColor)) {
      Brightness.dark => Colors.white,
      Brightness.light => Colors.black,
    };
