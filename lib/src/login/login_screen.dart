import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/form_body.dart';
import 'package:messenger_app/gap.dart';
import 'package:messenger_app/hook/form_key.dart';
import 'package:messenger_app/router/extension.dart';
import 'package:messenger_app/src/login/login_model.dart';
import 'package:messenger_app/src/widgets/email_form_field.dart';
import 'package:messenger_app/src/widgets/logo.dart';
import 'package:messenger_app/src/widgets/password_form_field.dart';

import 'login_bloc.dart';

@RoutePage()
class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

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
    final formKey = useFormKey();

    /// [useBloc] is a custom hook that returns a [Bloc] instance instead of used [BlocProvider]
    final cubit = useBloc<LoginCubit>();
    final state = useBlocBuilder(cubit);

    return Scaffold(
      body: FormBody(
        formKey: formKey,
        children: [
          const Spacer(),
          const Slogan(),
          const Spacer(),
          EmailFormField(controller: email),
          const Gap(),
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
                    context.router.push(const SignUpRoute());
                  },
                  child: Text(l10n.signUp),
                ),
                FilledButton(
                  onPressed: state.isLoading
                      ? null
                      : () async {
                          if (!formKey.currentState!.validate()) {
                            return;
                          }
                          final body = LoginModel(
                            email: email.text,
                            password: password.text,
                          );

                          await cubit.login(body);
                          cubit.state.whenOrNull(
                            data: (data) {
                              context.router.replaceInitialRoute();
                            },
                            error: (error, stackTrace) {
                              error.maybeWhen(
                                orElse: context.showDefaultErrorSnackBar,
                              );
                            },
                          );
                        },
                  child: state.maybeWhen(
                    loading: () => const SizedBox.square(
                      dimension: 24,
                      child: CircularProgressIndicator(),
                    ),
                    orElse: () => Text(l10n.login),
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
