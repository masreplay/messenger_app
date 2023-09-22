import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:messenger_app/collections.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/models/user.dart';
import 'package:messenger_app/src/main/discussions/user_avatar.dart';

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
            .collection(FirebaseCollections.users)
            .limit(10)
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else {
            final chats = snapshot.data?.docs
                    .map((e) => UserData.fromJson(e.data()))
                    .toList() ??
                [];

            return ListView.builder(
              padding: const EdgeInsets.all(10.0),
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final chat = chats[index];
                return DiscussionListTile(
                  data: chat,
                  onTap: () {
                    context.router.push(DiscussionRoute(peerId: chat.uid));
                  },
                );
              },
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
      title: Text(data.name),
      subtitle: Text(email),
      leading: UserAvatar(
        alt: email,
        photoURL: data.avatar,
      ),
    );
  }
}
