import 'package:flutter/material.dart';

import 'components.dart';
import '../models/models.dart';

class RecipeGridView extends StatelessWidget {
  const RecipeGridView({super.key, required this.recipe});

  static const double _gridPadding = 16;

  final List<SimpleRecipe> recipe;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(_gridPadding),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: _gridPadding,
        crossAxisSpacing: _gridPadding,
      ),
      itemBuilder: (BuildContext context, int index) {
        return RecipeThumbnail(recipe: recipe[index]);
      },
      itemCount: recipe.length,
    );
  }
}
