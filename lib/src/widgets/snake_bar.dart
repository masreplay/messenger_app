import 'package:flutter/material.dart';
import 'package:messenger_app/l10n/l10n.dart';

extension SnackBarX on BuildContext {
  ScaffoldMessengerState get _messenger => ScaffoldMessenger.of(this);
  AppLocalizations get _l10n => AppLocalizations.of(this)!;

  void showUnimplementedSnackBar() {
    _messenger.showSnackBar(
      SnackBar(
        content: Text(_l10n.unimplementedFeature),
      ),
    );
  }

  void showDefaultErrorSnackBar() =>
      showErrorSnackBar(_l10n.defaultErrorMessage);

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
