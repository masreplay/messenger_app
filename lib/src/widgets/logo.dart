import 'package:flutter/material.dart';
import 'package:messenger_app/l10n/l10n.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.messenger_outline,
      size: 64.0,
      color: Theme.of(context).colorScheme.tertiary,
    );
  }
}

class Slogan extends StatelessWidget {
  const Slogan({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Logo(),
        const SizedBox.square(dimension: 16.0),
        Text(
          l10n.greetingMessage,
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
