import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  final mockService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ExploreData>(
        future: mockService.getExploreData(),
        builder: (context, snapshot) {
          print(snapshot.connectionState);
          print(snapshot.hasData);
          if (snapshot.hasData &&
              snapshot.connectionState == ConnectionState.done) {
            final todayRecipes = snapshot.data?.todayRecipes ?? [];
            return TodayRecipeListView();
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
