import 'package:flutter/material.dart';

import 'my_home_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyApp(
        title: '흔들기 카운드 앱',
      ),
    );
  }
}

