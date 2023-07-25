import 'package:flutter/material.dart';
import '../models/models.dart';

class RecipeThumbnail extends StatelessWidget {
  const RecipeThumbnail({super.key, required this.recipe});

  final SimpleRecipe recipe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(recipe.title);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                recipe.dishImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            recipe.title,
            style: const TextStyle(
              letterSpacing: -0.2,
              fontWeight: FontWeight.w700,
              fontSize: 14.0,
            ),
          ),
          Text(
            recipe.duration,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
