import 'package:flutter/material.dart';

class RecipeDetail extends StatefulWidget {
  const RecipeDetail({super.key, required this.title, required this.url});

  final String? title;
  final String? url;

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('recipeDetial / initState - called');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: recipeDetail(widget.title ?? '', widget.url ?? '')
    );
  }
}

Widget recipeDetail(String title, String url) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title, style: const TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.purple
        ),),
        const SizedBox(
          height: 10.0,
        ),
        Text(url),
      ],
    ),
  );
}
