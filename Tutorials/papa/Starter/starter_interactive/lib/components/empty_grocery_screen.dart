import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset('assets/fooderlich_assets/empty_list.png'),
            ),
          ),
          Text(
            'No Groceries',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: 8,
          ),
          Text('Shopping for ingredients> Write them down',
              style: Theme.of(context).textTheme.bodyText2),
          MaterialButton(
            color: Colors.green,
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19),
            ),
            child: Text('Browse Recipes'),
            textColor: Colors.white,
            height: 38,
            onPressed: () {
              // TODO :: Provider 사용법 2
              Provider.of<TapManager>(context, listen: false).goToRecipes();
            },
          )
        ],
      ),
    );
  }
}
