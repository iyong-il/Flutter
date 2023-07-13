import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.all(16.0),
          constraints: const BoxConstraints.expand(width: 350, height: 450),
          decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/mag5.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16.0)),
          child: const Column(
            children: [
              // 상단
               AuthorCard(
                  authorName: 'Kaa',
                  title: 'sdadsas',
                  imageProvider: AssetImage('assets/author_katz.jpeg')),
              //하단
              Row(
                children: [
                  Text('First'),
                  Text('Second'),
                ],
              )
            ],
          )),
    );
  }
}
