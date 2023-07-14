import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';
import 'main.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    const list = <String>[
      '건강',
      'Vegan',
      'Carrot',
      'Green',
      'Wheat',
      'Mint',
      'Spencerian',
      'Lemongrass',
      'Salad',
      'Water',
    ];

    Chip getChips(String title) {
      return Chip(
        label: Text(
          title,
          style: FooderlichTheme.darkTextTheme.bodyText1,
        ),
        onDeleted: () {
          print('on chip deleted - $title');
        },
      );
    }

    SizedBox getSizedBox({double? width, double? height}) {
      return SizedBox(
        width: width,
        height: height,
      );
    }

    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/mag2.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(16.0)),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.book,
                      color: Colors.white,
                      size: 42.0,
                    ),
                    getSizedBox(height: 8.0),
                    Text(
                      'Recipe Trend',
                      style: FooderlichTheme.darkTextTheme.headline6,
                    ),
                    getSizedBox(height: 16.0),
                    Center(
                      child: Wrap(
                        spacing: 6.0,
                        alignment: WrapAlignment.start,
                        children: [
                          getChips(list[0]),
                          getChips(list[1]),
                          getChips(list[2]),
                          getChips(list[3]),
                          getChips(list[4]),
                          getChips(list[5]),
                          getChips(list[6]),
                          getChips(list[7]),
                          getChips(list[8]),
                          getChips(list[9]),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
