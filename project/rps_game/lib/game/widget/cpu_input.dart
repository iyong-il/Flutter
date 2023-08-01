import 'package:flutter/material.dart';
import 'package:rps_game/game/enum.dart';
import 'package:rps_game/game/widget/input_card.dart';

class CpuInput extends StatelessWidget {
  const CpuInput({super.key, required this.result, required this.cpuType});

  final bool result;
  final InputType cpuType;

  @override
  Widget build(BuildContext context) {
    return getCpuinput();
  }

  Widget getCpuinput() {
    if (!result) {
      return const SizedBox(
        width: double.infinity,
        // height: 50,
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
        const Expanded(child: SizedBox.shrink()),
        InputCard(() {},
          rpsType: cpuType,
          child: Image.asset(cpuType.path),
        ),
        const Expanded(child: SizedBox.shrink()),
      ],
    );
    // return Image.asset(
    //   cpuType.path,
    //   width: 140,
    // );
  }
}
