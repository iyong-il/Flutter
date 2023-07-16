import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
          TestPopUpMenu()
        ],
      ),
    );
  }
}

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

class TestRadioButton extends StatefulWidget {
  const TestRadioButton({super.key});

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}

enum TestValue {
  test1,
  test2,
  test3;
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

class TestSlider extends StatefulWidget {
  const TestSlider({super.key});

  @override
  State<TestSlider> createState() => _TestSliderState();
}

class _TestSliderState extends State<TestSlider> {
  late double value;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    value = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text('$value'),
        Slider(
            label: '${value.toInt()}',
            divisions: 100,
            min: 0,
            max: 100,
            value: value.toDouble(),
            activeColor: Colors.purple,
            onChanged: (double newValue) {
              setState(() {
                value = newValue;
              });
            }),
      ],
    );
  }
}

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
