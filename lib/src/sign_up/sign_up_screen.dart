import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/src/sign_up/sign_up_bloc.dart';
import 'package:messenger_app/src/widgets/email_form_field.dart';
import 'package:messenger_app/src/widgets/logo.dart';
import 'package:messenger_app/src/widgets/password_form_field.dart';

@RoutePage()
class SignUpScreen extends HookWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final email = useTextEditingController(
      text: kDebugMode ? Faker.email : null,
    );
    final password = useTextEditingController(
      text: kDebugMode ? Faker.password : null,
    );

    final obscure = useState(true);
    final cubit = useBloc<SignUpCubit>();

    print(cubit.state.runtimeType);

    const gap = SizedBox.square(dimension: 16.0);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            const Slogan(),
            const Spacer(),
            EmailFormField(controller: email),
            gap,
            PasswordFormField(
              controller: password,
              obscure: obscure.value,
              onToggle: () => obscure.value = !obscure.value,
            ),
            gap,
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.router.push(const LoginRoute());
                    },
                    child: Text(l10n.login),
                  ),
                  FilledButton(
                    onPressed: cubit.state.isLoading
                        ? null
                        : () async {
                            await cubit.signUp(email.text, password.text);
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
                    child: cubit.state.maybeWhen(
                      loading: () => const CircularProgressIndicator(),
                      orElse: () => Text(l10n.signUp),
                    ),
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
