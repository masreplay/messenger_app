import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:messenger_app/bloc/bloc_builder.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/router/extension.dart';
import 'package:messenger_app/src/sign_up/sign_up_bloc.dart';

import 'sign_up_model.dart';

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
    final name = useTextEditingController(
      text: kDebugMode ? Faker.name : null,
    );

    final obscure = useState(true);
    final formKey = useFormKey();

    return BlocProviderAndBuilder<SignUpCubit, SignUpCubitState>(
      builder: (context, state) {
        signUp() async {
          if (formKey.isNotValid()) {
            return;
          }
          final body = SignUpModel(
            email: email.text,
            password: password.text,
            name: name.text,
          );

          final cubit = context.read<SignUpCubit>();
          await cubit.signUp(body);
          cubit.state.whenOrNull(
            data: (_) => context.router.replaceInitialRoute(),
            error: (error, stackTrace) {
              error.maybeWhen(
                emailAlreadyInUse: () {
                  context.showErrorSnackBar(l10n.emailAlreadyInUse);
                },
                orElse: context.showDefaultErrorSnackBar,
              );
            },
          );
        }

        return Scaffold(
          body: FormBody(
            formKey: formKey,
            children: [
              const Spacer(),
              const Slogan(),
              const Spacer(),
              TextFormField(
                controller: name,
                validator: context.validator.required().build(),
                decoration: InputDecoration(
                  labelText: l10n.name,
                  suffixIcon: const Icon(Icons.person_outline),
                ),
              ),
              EmailFormField(controller: email),
              PasswordFormField(
                controller: password,
                obscure: obscure.value,
                onToggle: () => obscure.value = !obscure.value,
              ),
              const Gap(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () => context.router.push(const LoginRoute()),
                      child: Text(l10n.login),
                    ),
                    FilledButton(
                      onPressed: state.isLoading ? null : signUp,
                      child: state.maybeWhen(
                        loading: () => const SizedBox.square(
                          dimension: 24,
                          child: CircularProgressIndicator(),
                        ),
                        orElse: () => Text(l10n.signUp),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
