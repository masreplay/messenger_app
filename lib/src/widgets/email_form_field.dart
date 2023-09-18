import 'package:flutter/material.dart';
import 'package:messenger_app/common_lib.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return TextFormField(
      controller: controller,
      validator: context.validator.email().build(),
      decoration: InputDecoration(
        labelText: l10n.email,
        suffixIcon: const Icon(Icons.email_outlined),
      ),
    );
  }
}
