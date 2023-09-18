import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

class AppValidationBuilder extends ValidationBuilder {
  final BuildContext context;

  AppValidationBuilder({
    required this.context,
    required bool optional,
    FormValidatorLocale? locale,
  }) : super(locale: locale, optional: optional);
}
