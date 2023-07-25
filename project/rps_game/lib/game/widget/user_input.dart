import 'package:flutter/material.dart';
import 'package:rps_game/game/enum.dart';

import 'input_card.dart';

class UserInput extends StatelessWidget {
  const UserInput(
      {super.key,
      required this.result,
      required this.onTap,
      required this.rpsType});

  final bool result;

  final Function(RPSType) onTap;
  final RPSType? rpsType;

  @override
  Widget build(BuildContext context) {
    if (result) {
      return Row(
        children: [
          const Expanded(child: SizedBox.shrink()),
          Expanded(child: Image.asset(rpsType!.path)),
          const Expanded(child: SizedBox.shrink()),
        ],
      );
    }
    return Row(
      children: _getInputs(),
    );
  }

  List<Widget> _getInputs() {
    return RPSType.values
        .map(
          (e) => InputCard(
            rpsType: e,
            onTap: () => onTap.call(e),
            child: Image.asset(e.path),
          ),
        )
        .toList();
  }
}
