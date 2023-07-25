// 구글 디자인
import 'package:flutter/material.dart';
// 애플 디자인
// import 'package:flutter/cupertino.dart';

import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: Create theme
    final theme = FooderlichTheme.light();
    // TODO: Apply Home widget
    // 3
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // TODO: Add theme
      theme: theme,
      title: 'Fooderlich',
      // 4
      home: Home()
    );
  }
}
