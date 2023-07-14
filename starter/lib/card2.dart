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
        child: Column(
          children: [
            // 상단
            const AuthorCard(
                authorName: 'Mike Katz',
                title: 'Smoothie Connoisseur',
                imageProvider: AssetImage('assets/author_katz.jpeg')),
            //하단
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32.0),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothie',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                  ),
                  Text('Recipe', style: Theme.of(context).textTheme.headline1),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
