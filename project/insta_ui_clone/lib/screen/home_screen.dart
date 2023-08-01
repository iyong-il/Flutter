import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/models.dart';
import '../widget/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          StoryArea(),
          FeedList(),
        ],
      ),
    );
  }
}

class StoryArea extends StatelessWidget {
  const StoryArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              10, (index) => UserStory(size: 80, name: 'User ${index + 1}'))),
    );
  }
}

class FeedList extends StatelessWidget {
  const FeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: feedDataList.length,
      itemBuilder: (context, index) => FeedItem(
        data: feedDataList[index],
      ),
    );
  }
}
