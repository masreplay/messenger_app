import 'package:flutter/material.dart';

class FormBody extends StatelessWidget {
  const FormBody({
    super.key,
    required this.children,
    required this.formKey,
  });

  final List<Widget> children;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children,
        ),
      ),
    );
  }
}
