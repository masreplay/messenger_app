import 'package:flutter/material.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/src/main/discussions/image.dart';

@RoutePage()
class ImageScreen extends StatelessWidget {
  const ImageScreen({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.image),
      ),
      body: InteractiveViewer(
        child: Center(
          child: Hero(
            tag: imageUrl,
            child: AppNetworkImage(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
