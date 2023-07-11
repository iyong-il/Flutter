import 'package:flutter/material.dart';
import 'package:recipes/recipe_model.dart';

class RecipeDetail extends StatefulWidget {
  const RecipeDetail({super.key, required this.recipe});

  final Recipe recipe;

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Recipe_Detial / initState - called');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('Recipe_Detial / didChange - called');
  }

  double multiplier = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('detailPage'),
        backgroundColor: Colors.cyanAccent[400],
      ),
      body: SafeArea(
        child: recipeDetail(
            widget.recipe,
            Slider(
              value: multiplier,
              label:
                  '${((widget.recipe.serving ?? 0) * (multiplier)).toInt()}인분',
              min: 1.0,
              max: 10.0,
              divisions: 9,
              onChanged: (value) {
                setState(() {
                  multiplier = value;
                  print('multiplier - $multiplier');
                });
              },
            ),
            multiplier),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('Recipe_Detial / dispose - called');
  }
}

Widget recipeDetail(Recipe recipe, Widget widget, double multiplier) {
  return Center(
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(recipe.imageUrl ?? ''),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          recipe.label ?? '',
          style: const TextStyle(
              backgroundColor: Colors.red,
              height: 10.0,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.purple),
        ),
        const SizedBox(
          height: 16.0,
        ),
        // 리스트뷰는 사이즈가 정해져 있어야 하기 때문에 페이지의 일부에서 사용할 경우 Expanded로 감싸줘야 한다.
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            itemCount: recipe.ingredients?.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              final ingredient = recipe.ingredients?[index];
              return Column(
                children: [
                  Text(
                    "${(ingredient?.quantity ?? 0) * multiplier} ${ingredient?.measure ?? ''} ${ingredient?.name ?? ''}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              );
            },
          ),
        ),
        widget
      ],
    ),
  );
}
