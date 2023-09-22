import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.alt,
    this.photoURL =
        "https://avatars.githubusercontent.com/u/55885230?s=400&u=439f64e0a817035b12e86c36103acfc6b47eb856&v=4",
  });

  /// Random text to replace the avatar if the user doesn't have one
  final String alt;
  final String? photoURL;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    const colors = Colors.primaries;
    final backgroundColor = colors.elementAt(alt.hashCode % colors.length);
    final foregroundColor = estimateForegroundColor(backgroundColor);

    return photoURL == null
        ? Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              color: backgroundColor,
              shape: BoxShape.circle,
              border: Border.all(
                color: colorScheme.outline,
                width: 1.0,
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              alt.substring(0, 2).toUpperCase(),
              style: GoogleFonts.jetBrainsMono(
                color: foregroundColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(photoURL!),
          );
  }
}

Color estimateForegroundColor(Color backgroundColor) =>
    switch (ThemeData.estimateBrightnessForColor(backgroundColor)) {
      Brightness.dark => Colors.white,
      Brightness.light => Colors.black,
    };
