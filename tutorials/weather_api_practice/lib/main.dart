import 'package:flutter/material.dart';
import 'package:weather_api_practice/screens/loading.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'weather',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Loading(),
    );
  }
}
