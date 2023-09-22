import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_app/settings/settings_bloc.dart';

/// This allow to enable or disable cache
enum ImageCacheState { enabled, disabled }

/// Custom widget to display a network image with cache or not
class AppNetworkImage extends StatelessWidget {
  final String imageUrl;

  final BoxFit? fit;

  const AppNetworkImage(
    this.imageUrl, {
    super.key,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    final settings = BlocProvider.of<SettingsCubit>(context);
    return BlocBuilder<SettingsCubit, SettingsState>(
      bloc: settings,
      buildWhen: (previous, current) =>
          previous.imageCacheStatus != current.imageCacheStatus,
      builder: (context, state) {
        final enabled = state.imageCacheStatus == ImageCacheState.enabled;

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: enabled
              ? CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: fit,
                )
              : Image.network(
                  imageUrl,
                  fit: fit,
                ),
        );
      },
    );
  }
}
