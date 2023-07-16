import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            elevation: 0.0,
            title: const Text('Stateless vs Stateful'),
          ),
          body: const Body()),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ExampleStl(),
        ExampleStf(),
      ],
    );
  }
}

class ExampleStl extends StatelessWidget {
  const ExampleStl({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class ExampleStf extends StatefulWidget {
  const ExampleStf({super.key});

  @override
  State<ExampleStf> createState() => _ExampleStfState();
}

class _ExampleStfState extends State<ExampleStf> {
  Color color = Colors.orange;
  List colors = <Color>[
    Colors.green,
    Colors.white,
    Colors.purple.withOpacity(0.4),
    Colors.black,
    Colors.cyan
  ];

  late TextEditingController textEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          color: color,
        ),
        onTap: () {
          setState(() {
            color = colors[Random().nextInt(colors.length)];
          });
        },
      ),
    );
  }
}
