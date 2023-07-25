import 'package:flutter/material.dart';

import 'screen/home_screen.dart';
import 'screen/search_screen.dart';

class InstaBody extends StatelessWidget {
  const InstaBody({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 1:
        return const SearchScreen();
      case 0:
      default:
        return const HomeScreen();
    }
  }
}
