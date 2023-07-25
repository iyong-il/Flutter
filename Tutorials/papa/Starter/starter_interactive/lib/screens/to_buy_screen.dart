import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/components.dart';
import '../models/models.dart';

class ToBuyScreen extends StatelessWidget {
  const ToBuyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildGroceryScreen(),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Consumer<GroceryManager> buildGroceryScreen() {
    return Consumer<GroceryManager>(
      builder: (context, groceryManager, child) {
        if (groceryManager.items.isNotEmpty) {
          return Text('Grocery List');
        } else {
          return EmptyGroceryScreen();
        }
      },
    );
  }
}
