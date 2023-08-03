import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RedBox extends StatelessWidget {
  const RedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container().box.color(Colors.red).size(20, 20).make();
  }
}
