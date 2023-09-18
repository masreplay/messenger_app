import 'package:flutter/material.dart';
import 'package:messenger_app/l10n/l10n.dart';

extension SnackBarX on BuildContext {
  ScaffoldMessengerState get _messenger => ScaffoldMessenger.of(this);

  void showDefaultErrorSnackBar() =>
      showErrorSnackBar(AppLocalizations.of(this)!.defaultErrorMessage);

  void showErrorSnackBar(String message) => _messenger.showSnackBar(
        SnackBar(
          backgroundColor: Theme.of(this).colorScheme.error,
          content: Text(
            message,
            style: TextStyle(
              color: Theme.of(this).colorScheme.onError,
            ),
          ),
        ),
      );
}
