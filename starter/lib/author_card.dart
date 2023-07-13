import 'package:flutter/material.dart';

import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard(
      {super.key,
      required this.authorName,
      required this.title,
      required this.imageProvider});

  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleImage(
          imageProvider: imageProvider,
        ),
        Column(
          children: [
            Text(authorName),
            Text(title),
          ],
        ),
        const Icon(Icons.favorite_border)
      ],
    );
  }
}
