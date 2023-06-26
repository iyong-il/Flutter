import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {

    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: currentWidth < 600 ? Colors.deepPurple : Colors.deepOrange
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Width : ${MediaQuery.of(context).size.width.toInt()}',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Height : ${MediaQuery.of(context).size.height.toInt()}',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'AspectRatio : ${MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Orientation : ${MediaQuery.of(context).orientation.toString()}',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
