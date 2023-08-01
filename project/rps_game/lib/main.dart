import 'package:flutter/material.dart';

import 'game/game_body.dart';

void main() {
  runApp(const RPSApp());
}

class RPSApp extends StatelessWidget {
  const RPSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            '가위 바위 보',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: const GameBody(),
      ),
    );
  }
}
