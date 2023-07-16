import 'package:flutter/material.dart';

class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox> {
  late List<bool> values;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    values = [false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: values[0],
            onChanged: (value) => changeValue(0, value: value ?? false)),
        Checkbox(
            value: values[1],
            onChanged: (value) => changeValue(1, value: value ?? false)),
        Checkbox(
            value: values[2],
            onChanged: (value) => changeValue(2, value: value ?? false))
      ],
    );
  }

  void changeValue(int index, {bool value = false}) {
    setState(() {
      values[index] = value;
    });
  }
}
