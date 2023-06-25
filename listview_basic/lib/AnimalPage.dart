import 'package:flutter/material.dart';

import 'Model.dart';

class AnimalPage extends StatelessWidget {
  const AnimalPage({super.key, required this.animal});

  final Animal animal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animal.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(animal.location)
          ],
        ),
      ),
    );
  }
}
