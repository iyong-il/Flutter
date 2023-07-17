import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';

class TodayRecipeListView extends StatelessWidget {
  const TodayRecipeListView({super.key, required this.recipes});

  final List<ExploreRecipe> recipes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recipes of the Day 👨‍🍳',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            height: 400,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return _buildCard(recipes[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 16.0,
                );
              },
              itemCount: recipes.length,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard(ExploreRecipe exploreRecipe) {
    switch (exploreRecipe.cardType) {
      case RecipeCardType.card1:
        return Card1(recipe: exploreRecipe);
      case RecipeCardType.card2:
        return Card2(recipe: exploreRecipe);
      case RecipeCardType.card3:
        return Card3(recipe: exploreRecipe);
      default:
        throw Exception('This card does not exist!');
    }
  }
}
