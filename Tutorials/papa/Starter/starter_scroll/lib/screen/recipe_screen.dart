import 'package:flutter/material.dart';

import '../api/mock_fooderlich_service.dart';
import '../models/models.dart';
import '../components/components.dart';

class RecipeScreen extends StatelessWidget {
  RecipeScreen({super.key});

  final mockService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SimpleRecipe>>(
        future: mockService.getRecipes(),
        builder: (context, snapshot) {
          if (snapshot.hasData &&
              snapshot.connectionState == ConnectionState.done) {
            final recipes = snapshot.data ?? [];
            return RecipeGridView(recipe: recipes,);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
