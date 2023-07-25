import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/models.dart';
import 'screens/screens.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  static List<Widget> pages = <Widget>[
    ExploreScreen(),
    RecipesScreen(),
    // TODO: Replace with grocery screen
    ToBuyScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO :: Provider 사용법 1
    return Consumer<TapManager>(
        builder: (BuildContext context, TapManager tapManager, Widget? child) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Fooderlich',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        body: pages[tapManager.selectedTap],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: tapManager.selectedTap,
          onTap: (int index) {
            tapManager.goToTap(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Recipes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'To Buy',
            ),
          ],
        ),
      );
    });
  }
}
