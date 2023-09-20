import 'package:flutter/material.dart';
import 'package:messenger_app/gap.dart';
import 'package:messenger_app/l10n/l10n.dart';

class DefaultErrorWidget extends StatelessWidget {
  const DefaultErrorWidget({
    super.key,
    required this.error,
    required this.stackTrace,
    required this.onRetry,
  });

  final Object? error;
  final StackTrace stackTrace;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      children: [
        Text(l10n.defaultErrorMessage),
        const Gap(),
        ElevatedButton(
          onPressed: onRetry,
          child: Text(l10n.refresh),
        ),
      ],
    );
  }

  static Widget Function(Object? error, StackTrace stackTrace) call(
    VoidCallback onRetry,
  ) =>
      (error, stackTrace) => DefaultErrorWidget(
            error: error,
            stackTrace: stackTrace,
            onRetry: onRetry,
          );
}
