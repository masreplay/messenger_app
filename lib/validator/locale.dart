import 'package:flutter/cupertino.dart';
import 'package:form_validator/form_validator.dart';
import 'package:messenger_app/l10n/l10n.dart';

class AppFormValidatorLocale extends FormValidatorLocale {
  final BuildContext context;

  AppFormValidatorLocale(this.context);

  AppLocalizations get _l10n => AppLocalizations.of(context)!;

  @override
  String email(String v) => "";

  @override
  String maxLength(String v, int n) => _l10n.validationMaxLength(n);

  @override
  String minLength(String v, int n) => _l10n.validationMinLength(n);

  @override
  String required() => _l10n.validationRequired;

  @override
  String url(String v) => throw UnimplementedError();

  @override
  String name() => "all";

  @override
  String phoneNumber(String v) => throw UnimplementedError();

  @override
  String ip(String v) => throw UnimplementedError();

  @override
  String ipv6(String v) => throw UnimplementedError();
}
