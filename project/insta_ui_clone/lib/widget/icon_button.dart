import 'package:flutter/material.dart';

IconButton iconButton({
  required IconData icon,
  double? size,
  required VoidCallback onPressed,
}) {
  return IconButton(
    icon: Icon(
      icon,
      size: size,
    ),
    onPressed: () => onPressed.call(),
  );
}
