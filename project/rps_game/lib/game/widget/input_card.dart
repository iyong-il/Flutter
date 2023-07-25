import 'package:flutter/material.dart';

import '../enum.dart';

class InputCard extends StatelessWidget {
  const InputCard({
    super.key,
    required this.rpsType,
    required this.onTap,
    required this.child,
  });

  final RPSType rpsType;
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

class InputContents extends StatelessWidget {
  const InputContents({
    super.key,
    required this.rpsType,
    required this.child,
  });

  final RPSType rpsType;
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
