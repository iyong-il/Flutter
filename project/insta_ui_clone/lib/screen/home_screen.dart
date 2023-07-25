import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [StoryArea(), FeedList()],
      ),
    );
  }
}

class StoryArea extends StatelessWidget {
  const StoryArea({super.key});

  final double size = 80;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              10, (index) => UserStory(size: size, name: 'User ${index + 1}'))),
    );
  }
}

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

class FeedData {
  final String name;
  final int likeCount;
  final String content;

  FeedData(
      {required this.name, required this.likeCount, required this.content});
}

final List<FeedData> feedDataList = [
  FeedData(name: 'name1', likeCount: 1, content: 'content1'),
  FeedData(name: 'name2', likeCount: 11, content: 'content2'),
  FeedData(name: 'name3', likeCount: 111, content: 'content3'),
  FeedData(name: 'name4', likeCount: 1111, content: 'content4'),
  FeedData(name: 'name5', likeCount: 11111, content: 'content5'),
  FeedData(name: 'name6', likeCount: 111111, content: 'content6'),
  FeedData(name: 'name7', likeCount: 1111111, content: 'content7'),
];

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
                  SizedBox(
                    width: 8,
                  ),
                  Text(data.name),
                ],
              ),
              const Icon(Icons.more_vert)
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
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
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite_outline)),
                  IconButton(
                      onPressed: () {}, icon: Icon(CupertinoIcons.chat_bubble)),
                  IconButton(
                      onPressed: () {}, icon: Icon(CupertinoIcons.paperplane)),
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bookmark)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            '좋아요 ${data.likeCount}개',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: data.name,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: data.content),
          ], style: const TextStyle(color: Colors.black))),
        ),
        const SizedBox(
          height: 8,
        )
      ],
    );
  }
}
