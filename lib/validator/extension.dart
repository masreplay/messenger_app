import 'package:flutter/material.dart';

import 'locale.dart';
import 'rules.dart';

extension ValidationExtension on BuildContext {
  AppValidationBuilder get validator {
    return AppValidationBuilder(
      context: this,
      locale: AppFormValidatorLocale(this),
      optional: false,
    );
  }

  AppValidationBuilder get optionalValidator {
    return AppValidationBuilder(
      context: this,
      locale: AppFormValidatorLocale(this),
      optional: true,
    );
  }
}
