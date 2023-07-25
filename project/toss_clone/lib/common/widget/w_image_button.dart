import 'package:flutter/material.dart';

import '../common.dart';

class ImageButton extends StatelessWidget {
  const ImageButton(
      {super.key, required this.onTap, this.width = 26, this.height = 26, this.padding = const EdgeInsets.all(10), required this.imagePath,});

  final VoidCallback onTap;
  final double width;
  final double height;
  final EdgeInsets padding;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Tap(
          onTap: onTap,
          child: Image.asset(imagePath, height: height, width: width,)
      ),
    );
  }
}
