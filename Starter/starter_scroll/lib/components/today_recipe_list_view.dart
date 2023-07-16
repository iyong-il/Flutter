import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';

class TodayRecipeListView extends StatelessWidget {
  const TodayRecipeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recipes of the Day',
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
                return Text('item number - $index');
              },
              separatorBuilder: (BuildContext context, int index) {
                return Container(color: Colors.red, height: 5.0, width: 5.0,);
              },
              itemCount: 7,
            ),
          )
        ],
      ),
    );
  }
}
