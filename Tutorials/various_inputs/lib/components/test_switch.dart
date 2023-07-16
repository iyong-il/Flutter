import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestSwitch extends StatefulWidget {
  const TestSwitch({super.key});

  @override
  State<TestSwitch> createState() => _TestSwitchState();
}

class _TestSwitchState extends State<TestSwitch> {
  late bool value;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    value = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
            value: value,
            onChanged: (bool newValue) {
              setState(() {
                value = newValue;
              });
            }),
        CupertinoSwitch(
            value: value,
            onChanged: (bool newValue) {
              setState(() {
                value = newValue;
              });
            })
      ],
    );
  }
}
