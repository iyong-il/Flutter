import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppbarTutorial',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MyAppBar(),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icons menu'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              print('button Pressed1');
            },
            icon: Icon(Icons.menu)),
        actions: [
          IconButton(
              onPressed: () {
                print('button Pressed2');
              },
              icon: Icon(Icons.shopping_cart)),
          IconButton(
              onPressed: () {
                print('button Pressed3');
              },
              icon: Icon(Icons.search)),
        ],
      ),
    );
  }
}
