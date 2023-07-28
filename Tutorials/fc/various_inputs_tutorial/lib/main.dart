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
        body: const Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
   final Widget height10 = _getHeight(10);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const TestCheckBox(),
          height10,
          const TestRadioButton(),
          height10,
          const TestSlider(),
          height10,
          const TestSwitch(),
          height10,
          const TestPopUpMenu(),
        ],
      ),
    );
  }
}

Widget _getHeight(double height) {
  return SizedBox(
    height: height,
  );
}
