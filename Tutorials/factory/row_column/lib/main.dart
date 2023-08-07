import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.black,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    redBox,
                    orangeBox,
                    yellowBox,
                    greenBox,
                  ],
                ),
                orangeBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    redBox,
                    orangeBox,
                    yellowBox,
                    greenBox,
                  ],
                ),
                greenBox
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get redBox => Container(
        color: Colors.red,
        width: 50,
        height: 50,
      );

  Widget get orangeBox => Container(
        color: Colors.orange,
        width: 50,
        height: 50,
      );

  Widget get yellowBox => Container(
        color: Colors.yellow,
        width: 50,
        height: 50,
      );

  Widget get greenBox => Container(
        color: Colors.green,
        width: 50,
        height: 50,
      );
}
