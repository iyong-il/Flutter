import 'package:flutter/material.dart';

import 'AnimalPage.dart';
import 'Model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> animalNAme = [
      'Bear',
      'Camel',
      'Deer',
      'Fox',
      'Kangaroo',
      'Koala',
      'Lion',
      'Tiger',
    ];

    final List<Animal> animalData = List.generate(animalNAme.length,
        (index) => Animal(animalNAme[index], animalNAme[index]));

    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: animalNAme.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Card(
              child: ListTile(
                title: Text(animalData[index].title),
                leading: const SizedBox(
                    width: 50, height: 50, child: Icon(Icons.add)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AnimalPage(
                            animal: animalData[index],
                          )));
                  debugPrint(animalData[index].location);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
