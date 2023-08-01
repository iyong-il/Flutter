import 'package:flutter/material.dart';

BottomNavigationBarItem bottomItem({
  required IconData icon,
  double? size,
  required String label,
}) {
  return BottomNavigationBarItem(
      icon: Icon(
        icon,
        size: size,
      ),
      label: label);
}
