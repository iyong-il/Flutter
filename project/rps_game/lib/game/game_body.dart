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
  InputType? _rpsType;
  late InputType _cpuType;

  @override
  void initState() {
    isDone = false;
    _setCpuType();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: CpuInput(
          result: isDone,
          cpuType: _cpuType,
        )),
        Expanded(
            child: GameResult(
          result: isDone,
          resultType: _getResult(),
          onTap: _reset,
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

  void _setUserInput(InputType userInput) {
    setState(() {
      isDone = true;
      _rpsType = userInput;
    });
  }

  void _setCpuType() {
    _cpuType = InputType.values[Random().nextInt(3)];
  }

  GameResultType? _getResult() {
    if (_rpsType == null) return null;

    switch (_rpsType) {
      case InputType.rock:
        switch (_cpuType) {
          case InputType.rock:
            return GameResultType.draw;
          case InputType.paper:
            return GameResultType.cpuWin;
          case InputType.scissors:
            return GameResultType.playerWin;
        }
      case InputType.paper:
        switch (_cpuType) {
          case InputType.rock:
            return GameResultType.playerWin;
          case InputType.paper:
            return GameResultType.draw;
          case InputType.scissors:
            return GameResultType.cpuWin;
        }
      case InputType.scissors:
        switch (_cpuType) {
          case InputType.rock:
            return GameResultType.cpuWin;
          case InputType.paper:
            return GameResultType.playerWin;
          case InputType.scissors:
            return GameResultType.draw;
        }
      default:
        break;
    }
  }

  void _reset() {
    setState(() {
      isDone = false;
      _setCpuType();
    });
  }
}
