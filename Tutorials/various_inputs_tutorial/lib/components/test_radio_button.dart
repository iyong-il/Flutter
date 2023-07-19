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
        GestureDetector(
          child: Container(
            padding: EdgeInsets.only(left: 16),
            height: 60,
            width: double.infinity,
            color: Colors.grey,
            child: Row(
              children: [
                Radio<TestValue>(
                  value: TestValue.test2,
                  groupValue: selectValue,
                  onChanged: (value) => setState(() => selectValue = value!),
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(TestValue.test2.name, style: TextStyle(fontSize: 16.0),)
              ],
            ),
          ),
          onTap: () {
            setState(() {
              if (selectValue != TestValue.test2) {
                selectValue = TestValue.test2;
              }
            });
          },
        ),
        Radio<TestValue>(
            value: TestValue.test3,
            groupValue: selectValue,
            onChanged: (value) => setState(() => selectValue = value!))
      ],
    );
  }
}
