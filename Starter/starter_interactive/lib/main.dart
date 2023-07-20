import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fooderlich_theme.dart';
import 'home.dart';
import 'models/models.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        title: 'Fooderlich',
        // TODO: Replace this with MultiProvider
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider<TapManager>(
              create: (BuildContext context) => TapManager(),
            ),
            ChangeNotifierProvider<GroceryManager>(
              create: (BuildContext context) => GroceryManager(),
            )
          ],
          child: const Home(),
        ));
  }
}
