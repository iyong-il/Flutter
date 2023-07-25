import 'package:flutter/material.dart';

import '../enum.dart';
import 'input_contents.dart';

class InputCard extends StatelessWidget {
  const InputCard({
    super.key,
    required this.rpsType,
    required this.onTap,
    required this.child,
  });

  final InputType rpsType;
  final VoidCallback? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: InputContents(
          rpsType: rpsType,
          child: child,
        ),
        onTap: () => onTap?.call(),
      ),
    );
  }
}


