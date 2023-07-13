import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    super.key,
    required this.imageProvider,
    this.imageRadius = 30,
  });

  final ImageProvider imageProvider;
  final double imageRadius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      child: CircleAvatar(
        foregroundImage: imageProvider,
        radius: imageRadius - 4,
      ),
    );
  }
}
