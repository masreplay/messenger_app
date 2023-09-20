import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:messenger_app/gap.dart';
import 'package:messenger_app/l10n/l10n.dart';

class DefaultErrorWidget extends StatelessWidget {
  const DefaultErrorWidget._({
    required this.error,
    required this.stackTrace,
    required this.onRetry,
  });

  final Object? error;
  final StackTrace stackTrace;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    log(toString(), error: error, stackTrace: stackTrace);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(l10n.defaultErrorMessage),
          const Gap(),
          ElevatedButton(
            onPressed: onRetry,
            child: Text(l10n.refresh),
          ),
        ],
      ),
    );
  }

  static Widget Function(Object? error, StackTrace stackTrace) call(
          [VoidCallback? onRetry]) =>
      (error, stackTrace) => DefaultErrorWidget._(
            error: error,
            stackTrace: stackTrace,
            onRetry: onRetry,
          );
}
