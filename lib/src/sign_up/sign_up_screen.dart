import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/form_body.dart';
import 'package:messenger_app/gap.dart';
import 'package:messenger_app/hook/hook.dart';
import 'package:messenger_app/router/extension.dart';
import 'package:messenger_app/src/sign_up/sign_up_bloc.dart';
import 'package:messenger_app/src/widgets/email_form_field.dart';
import 'package:messenger_app/src/widgets/logo.dart';
import 'package:messenger_app/src/widgets/password_form_field.dart';

import 'sign_up_model.dart';

@RoutePage()
class SignUpScreen extends HookWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final email = useTextEditingController(
      text: kDebugMode ? "mohammedatheer@thekeysoftware.com" : null,
    );
    final password = useTextEditingController(
      text: kDebugMode ? "12345678" : null,
    );
    final name = useTextEditingController(
      text: kDebugMode ? "محمد اثير ساطع" : null,
    );

    final obscure = useState(true);
    final cubit = useBloc<SignUpCubit>();
    final state = useBlocBuilder(cubit);
    final formKey = useFormKey();

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
                  onPressed: () {
                    context.router.push(const LoginRoute());
                  },
                  child: Text(l10n.login),
                ),
                FilledButton(
                  onPressed: state.isLoading
                      ? null
                      : () async {
                          if (formKey.isNotValid()) {
                            return;
                          }
                          final body = SignUpModel(
                            email: email.text,
                            password: password.text,
                            name: name.text,
                          );

                          await cubit.signUp(body);
                          state.whenOrNull(
                            data: (data) {
                              context.router.replaceInitialRoute();
                            },
                            error: (error, stackTrace) {
                              error.maybeWhen(
                                emailAlreadyInUse: () {},
                                orElse: context.showDefaultErrorSnackBar,
                              );
                            },
                          );
                        },
                  child: state.maybeWhen(
                    loading: () => const CircularProgressIndicator(),
                    orElse: () => Text(l10n.signUp),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
