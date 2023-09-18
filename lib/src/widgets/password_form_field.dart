import 'package:flutter/material.dart';
import 'package:messenger_app/common_lib.dart';

class PasswordFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscure;
  final VoidCallback onToggle;

  const PasswordFormField({
    super.key,
    required this.controller,
    required this.obscure,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      // no need to implement validation because it's already implemented in the firebase auth
      validator: context.validator.minLength(8).build(),
      decoration: InputDecoration(
        labelText: l10n.password,
        suffixIcon: IconButton(
          icon: Icon(
            obscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
          ),
          onPressed: () => onToggle(),
        ),
      ),
    );
  }
}
