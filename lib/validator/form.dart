import 'package:flutter/material.dart';

extension FormStateX on GlobalKey<FormState> {
  bool isValid() {
    return currentState?.validate() ?? false;
  }

  bool isNotValid() {
    final current = !isValid();
    if (current) debugPrint("Form is not valid");
    return current;
  }
}
