import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/models.dart';
import '../util/width_height.dart';
import 'widgets.dart';

class FeedItem extends StatelessWidget {
  const FeedItem({super.key, required this.data});

  final FeedData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.shade300),
                  ),
                  const Width(width: 8),
                  Text(data.name),
                ],
              ),
              const Icon(Icons.more_vert)
            ],
          ),
        ),
        const Height(height: 8),
        Container(
          width: double.infinity,
          height: 280,
          color: Colors.indigo,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  iconButton(icon: Icons.favorite_outline, onPressed: () {}),
                  iconButton(
                      icon: CupertinoIcons.chat_bubble, onPressed: () {}),
                  iconButton(icon: CupertinoIcons.paperplane, onPressed: () {})
                ],
              ),
              iconButton(icon: CupertinoIcons.bookmark, onPressed: () {})
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            '좋아요 ${data.likeCount}개',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: data.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: data.content),
              ],
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
        const Height(height: 8)
      ],
    );
  }
}
