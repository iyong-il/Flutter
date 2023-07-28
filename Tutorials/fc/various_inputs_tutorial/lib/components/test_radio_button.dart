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
        Container(
          color: Colors.red.shade300,
          child: ListTile(
            leading: Radio<TestValue>(
                value: TestValue.test1,
                groupValue: selectValue,
                onChanged: (value) => setState(() => selectValue = value!)),
            title: Text(TestValue.test1.name),
            onTap: () => setState(() => selectValue = TestValue.test1),
          ),
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.only(left: 16),
            height: 60,
            width: double.infinity,
            color: Colors.green.shade300,
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
                Text(
                  TestValue.test2.name,
                  style: const TextStyle(fontSize: 16.0),
                )
              ],
            ),
          ),
          onTap: () => setState(() => selectValue = TestValue.test2),
        ),
        Container(
          color: Colors.blue.shade300,
          height: 60,
          child: Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Radio<TestValue>(
                value: TestValue.test3,
                groupValue: selectValue,
                onChanged: (value) => setState(() => selectValue = value!),
              ),
              const SizedBox(
                width: 18,
              ),
              Text(
                (TestValue.test3.name).toString(),
                style: const TextStyle(fontSize: 16),
              )
            ],
          ),
        )
      ],
    );
  }
}
