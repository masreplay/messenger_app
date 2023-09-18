import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:messenger_app/faker.dart';
import 'package:messenger_app/l10n/l10n.dart';
import 'package:messenger_app/router/app_router.dart';
import 'package:messenger_app/snake_bar.dart';

import 'login_bloc.dart';

@RoutePage()
class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;

    final email = useTextEditingController(
      text: kDebugMode ? Faker.email : null,
    );
    final password = useTextEditingController(
      text: kDebugMode ? Faker.password : null,
    );

    final obscure = useState(true);
    final cubit = useBloc<LoginCubit>();

    const gap = SizedBox.square(dimension: 16.0);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            _Logo(),
            gap,
            Text(
              l10n.greetingMessage,
              style: textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                labelText: l10n.email,
                suffixIcon: const Icon(Icons.email_outlined),
              ),
            ),
            gap,
            TextFormField(
              controller: password,
              obscureText: obscure.value,
              decoration: InputDecoration(
                labelText: l10n.password,
                suffixIcon: IconButton(
                  icon: Icon(
                    obscure.value
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  onPressed: () => obscure.value = !obscure.value,
                ),
              ),
            ),
            gap,
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.router.push(const SignUpRoute());
                    },
                    child: Text(l10n.signUp),
                  ),
                  FilledButton(
                    onPressed: () async {
                      await cubit.login(email.text, password.text);
                      cubit.state.whenOrNull(
                        data: (data) {},
                        error: (error, stackTrace) {
                          error.maybeWhen(
                            emailAlreadyInUse: () {},
                            orElse: context.showDefaultErrorSnackBar,
                          );
                        },
                      );
                    },
                    child: Text(l10n.login),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.messenger_outline,
      size: 64.0,
    );
  }
}
