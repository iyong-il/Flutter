import 'package:flutter/material.dart';

import 'circle_image.dart';

class FriendPostTile extends StatelessWidget {
  const FriendPostTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleImage(
          imageRadius: 24.0,
          imageProvider: AssetImage('assets/profile_pics/person_crispy.png'),
        ),
        SizedBox(
          width: 16.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        )
      ],
    );
  }
}
