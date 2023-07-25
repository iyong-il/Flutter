import 'package:flutter/material.dart';

import 'circle_image.dart';
import 'package:fooderlich/models/models.dart';

class FriendPostTile extends StatelessWidget {
  const FriendPostTile({super.key, required this.posts});

  final Post posts;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleImage(
          imageProvider: AssetImage(posts.profileImageUrl),
        ),
        const SizedBox(
          width: 16.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                posts.comment,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Text(
                '${posts.timestamp}mins ago',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
