import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rps_game/game/enum.dart';

import 'widget/cpu_input.dart';
import 'widget/game_result.dart';
import 'widget/user_input.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  late bool isDone;
  RPSType? _rpsType;
  late RPSType _cpuType;

  @override
  void initState() {
    isDone = false;
    setCpuType();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CpuInput(result: isDone, cpuType: _cpuType)),
        Expanded(
            child: GameResult(
          result: isDone,
          resultType: getResult(),
          onTap: reset,
        )),
        Expanded(
            child: UserInput(
          result: isDone,
          onTap: _setUserInput,
          rpsType: _rpsType,
        )),
      ],
    );
  }

  void _setUserInput(RPSType userInput) {
    setState(() {
      isDone = true;
      _rpsType = userInput;
    });
  }

  void setCpuType() {
    final random = Random();
    _cpuType = RPSType.values[random.nextInt(3)];
  }

  GameResultType? getResult() {
    if (_rpsType == null) return null;

    switch (_rpsType) {
      case RPSType.rock:
        switch (_cpuType) {
          case RPSType.rock:
            return GameResultType.draw;
          case RPSType.paper:
            return GameResultType.cpuWin;
          case RPSType.scissors:
            return GameResultType.playerWin;
        }
      case RPSType.paper:
        switch (_cpuType) {
          case RPSType.rock:
            return GameResultType.playerWin;
          case RPSType.paper:
            return GameResultType.draw;
          case RPSType.scissors:
            return GameResultType.cpuWin;
        }
      case RPSType.scissors:
        switch (_cpuType) {
          case RPSType.rock:
            return GameResultType.cpuWin;
          case RPSType.paper:
            return GameResultType.playerWin;
          case RPSType.scissors:
            return GameResultType.draw;
        }
      default:
        break;
    }
  }

  void reset() {
    setState(() {
      isDone = false;
      setCpuType();
    });
  }
}
