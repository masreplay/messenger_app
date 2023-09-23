import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_app/bloc/bloc_builder.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/data/models/user.dart';
import 'package:messenger_app/src/widgets/user_avatar.dart';
import 'package:messenger_app/src/widgets/user_bloc.dart';

@RoutePage()
class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.discussions)),
      body: BlocProviderAndBuilder<UsersCubit, UsersCubitState>(
        factory: (bloc) => bloc.run(),
        builder: (context, state) {
          return state.maybeWhen(
            data: (data) => RefreshIndicator(
              onRefresh: () async => context.read<UsersCubit>().run(),
              child: ListView.builder(
                padding: const EdgeInsets.all(10.0),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final chat = data[index];
                  return UserListTile(
                    data: chat,
                    onTap: () {
                      context.router.push(DiscussionRoute(peerId: chat.uid));
                    },
                  );
                },
              ),
            ),
            error: DefaultErrorWidget.call(context.read<UsersCubit>().run),
            orElse: DefaultLoadingWidget.new,
          );
        },
      ),
    );
  }
}

class UserListTile extends StatelessWidget {
  const UserListTile({
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
