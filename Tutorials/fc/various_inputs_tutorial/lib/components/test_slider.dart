import 'package:flutter/material.dart';

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
        Text('${value.round()}'),
        Slider(
            label: '${value.toInt()}',
            divisions: 100,
            min: 0,
            max: 100,
            value: value,
            activeColor: Colors.purple,
            onChanged: (double newValue) => setState(() => value = newValue)),
      ],
    );
  }
}
