import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
      ),
      body: InteractiveViewer(
        child: Center(
          child: Hero(
            tag: imageUrl,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
