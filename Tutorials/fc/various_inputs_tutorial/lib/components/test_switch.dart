import 'dart:io';

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
        if(Platform.isAndroid)
        Switch(
          value: value,
          onChanged: (bool newValue) {
            setState(
              () {
                value = newValue;
                if (!value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'value - $newValue',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      showCloseIcon: true,
                      duration: const Duration(milliseconds: 1500),
                      backgroundColor: Colors.purple,
                    ),
                  );
                }
              },
            );
          },
        ),
        if(Platform.isIOS)
        CupertinoSwitch(
          value: value,
          onChanged: (bool newValue) {
            setState(
              () {
                value = newValue;
                if (value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'value - $newValue',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      showCloseIcon: true,
                      duration: const Duration(milliseconds: 500),
                      backgroundColor: Colors.orange,
                    ),
                  );
                }
              },
            );
          },
        )
      ],
    );
  }
}
