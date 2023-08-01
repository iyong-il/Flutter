import 'package:flutter/material.dart';

class UserStory extends StatelessWidget {
  const UserStory({
    super.key,
    required this.size,
    required this.name,
  });

  final double size;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        children: [
          Container(
            width: size,
            height: size,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            decoration: BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(size / 2)),
          ),
          Text(name)
        ],
      ),
    );
  }
}
