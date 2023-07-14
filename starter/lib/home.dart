import 'package:flutter/material.dart';

import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  static List<Widget> pages = [
    const Card1(),
    const Card2(),
    const Card3()
  ];

  void _onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Style the title
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      // TODO: Style the body text
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 14.0,
          onTap: (int index) {
            _onItemClicked(index);
            print(index);
          },
          currentIndex: selectedIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card3',
            ),
          ]),
    );
  }
}
