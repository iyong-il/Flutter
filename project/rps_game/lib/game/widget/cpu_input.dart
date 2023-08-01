import 'package:flutter/material.dart';
import 'package:rps_game/game/enum.dart';
import 'package:rps_game/game/widget/input_card.dart';

const emptyExpanded = Expanded(child: SizedBox.shrink());

class CpuInput extends StatelessWidget {
  const CpuInput({super.key, required this.result, required this.cpuType});

  final bool result;
  final InputType cpuType;

  @override
  Widget build(BuildContext context) {
    return getCpuInput();
  }

  Widget getCpuInput() {
    if (!result) {
      return const SizedBox(
        width: double.infinity,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '컴퓨터의 선택은?',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
    }
    return Row(
      children: [
        emptyExpanded,
        InputCard(
          rpsType: cpuType,
          child: Image.asset(cpuType.path),
        ),
        emptyExpanded,
      ],
    );
  }
}
