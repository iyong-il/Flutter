import 'package:flutter/material.dart';

import 'components.dart';
import '../models/models.dart';

class FriendPostListView extends StatelessWidget {
  const FriendPostListView({super.key, required this.friendsPost});

  final List<Post> friendsPost;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Social Chefs 👍',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 16.0,
          ),
          ListView.separated(
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext buildContext, int index) {
                return FriendPostTile(
                  posts: friendsPost[index],
                );
              },
              separatorBuilder: (buildContext, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  height: 1.0,
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.4),
                );
              },
              itemCount: friendsPost.length)
        ],
      ),
    );
  }
}
