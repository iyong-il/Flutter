import 'package:flutter/material.dart';

import '../enum.dart';

class InputContents extends StatelessWidget {
  const InputContents({
    super.key,
    required this.rpsType,
    required this.child,
  });

  final InputType rpsType;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    const EdgeInsets edgeInsets =
    EdgeInsets.symmetric(vertical: 12, horizontal: 8);

    return Container(
      margin: edgeInsets,
      padding: edgeInsets,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey, width: 8),
      ),
      child: child,
    );
  }
}