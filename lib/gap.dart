import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap({super.key, this.size = 16.0});

  final double size;

  @override
  Widget build(BuildContext context) => SizedBox.square(dimension: size);
}
