import 'package:flutter/material.dart';

import 'components.dart';

class FriendPostListView extends StatelessWidget {
  const FriendPostListView({super.key});

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
                return FriendPostTile();
              },
              separatorBuilder: (buildContext, index) {
                return const SizedBox(
                  height: 16.0,
                );
              },
              itemCount: 10)
        ],
      ),
    );
  }
}
