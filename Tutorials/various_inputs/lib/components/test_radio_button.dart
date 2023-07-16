import 'package:flutter/material.dart';

import '../models/test_value.dart';

class TestRadioButton extends StatefulWidget {
  const TestRadioButton({super.key});

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}

class _TestRadioButtonState extends State<TestRadioButton> {
  TestValue? selectValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio<TestValue>(
              value: TestValue.test1,
              groupValue: selectValue,
              onChanged: (value) => setState(() => selectValue = value!)),
          title: Text(TestValue.test1.name),
          onTap: () {
            setState(() {
              if (selectValue != TestValue.test1) {
                selectValue = TestValue.test1;
              }
            });
          },
        ),
        Radio<TestValue>(
            value: TestValue.test2,
            groupValue: selectValue,
            onChanged: (value) => setState(() => selectValue = value!)),
        Radio<TestValue>(
            value: TestValue.test3,
            groupValue: selectValue,
            onChanged: (value) => setState(() => selectValue = value!))
      ],
    );
  }
}
