import 'package:flutter/material.dart';
import 'package:navigator_tutorial/ScreenB.dart';
import 'package:navigator_tutorial/ScreenC.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenA'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/B');
            }, child: Text('Go to ScreenB')),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/C');
            }, child: Text('Go to ScreenC')),
          ],
        ),
      ),
    );
  }
}
