import 'package:flutter/material.dart';
import 'package:rps_game/game/enum.dart';

class GameResult extends StatelessWidget {
  const GameResult(
      {super.key,
      required this.result,
      required this.resultType,
      required this.onTap});

  final bool result;
  final GameResultType? resultType;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    if (result) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              resultType!.displayString,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            TextButton(
              child: const Text('재시작'),
              onPressed: () => onTap.call(),
            )
          ],
        ),
      );
    }
    return const Center(
      child: Text(
        '가위, 바위, 보 중 하나를 선택해 주세요.',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
