import 'package:flutter/material.dart';
import 'components/components.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            elevation: 0.0,
            title: const Text('다양한 Flutter의 입력 알아보기'),
          ),
          body: const Body()),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          TestCheckBox(),
          TestRadioButton(),
          TestSlider(),
          TestSwitch(),
          TestPopUpMenu(),
        ],
      ),
    );
  }
}
