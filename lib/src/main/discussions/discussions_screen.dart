import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/models/user.dart';
import 'package:messenger_app/src/main/discussions/user_avatar.dart';
import 'package:messenger_app/src/main/discussions/user_bloc.dart';
import 'package:messenger_app/src/widgets/error_widget.dart';
import 'package:messenger_app/src/widgets/loading_widget.dart';

@RoutePage()
class UsersScreen extends HookWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final cubit = useBloc<UsersCubit>();
    final state = useBlocBuilder(cubit);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.discussions),
      ),
      body: state.maybeWhen(
        data: (data) => ListView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: data.length,
          itemBuilder: (context, index) {
            final chat = data[index];
            return DiscussionListTile(
              data: chat,
              onTap: () {
                context.router.push(DiscussionRoute(peerId: chat.uid));
              },
            );
          },
        ),
        error: DefaultErrorWidget.call(cubit.run),
        orElse: DefaultLoadingWidget.new,
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
