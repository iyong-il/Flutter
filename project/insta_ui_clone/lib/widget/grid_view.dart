import 'package:flutter/material.dart';

final List<Color> gridItem =
    List.generate(30, (index) => Colors.green.shade300);

class SearchGrid extends StatelessWidget {
  const SearchGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.zero,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: gridItem
          .map((color) => Container(
                color: color,
              ))
          .toList(),
    );
  }
}
