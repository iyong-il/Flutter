import 'package:flutter/material.dart';

import '../models/test_value.dart';

class TestPopUpMenu extends StatefulWidget {
  const TestPopUpMenu({super.key});

  @override
  State<TestPopUpMenu> createState() => _TestPopUpMenuState();
}

class _TestPopUpMenuState extends State<TestPopUpMenu> {
  TestValue selectValue = TestValue.test1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(selectValue.name),
        PopupMenuButton(
          itemBuilder: (context) {
            return TestValue.values
                .map((value) =>
                    PopupMenuItem(value: value, child: Text(value.name)))
                .toList();
          },
          onSelected: (newValue) {
            setState(() {
              selectValue = newValue;
            });
          },
        ),
      ],
    );
  }
}