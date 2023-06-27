import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int randomNum1 = 1;
  int randomNum2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DICE'),
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset('assets/images/dice$randomNum1.png'),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Image.asset('assets/images/dice$randomNum2.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            ButtonTheme(
              minWidth: 100.0,
              height: 60.0,
              child: ElevatedButton(
                child: Icon(
                  Icons.play_arrow,
                  size: 50.0,
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent, elevation: 0.0),
                onPressed: () {
                  setState(() {
                    randomNum1 = randomNumber(context);
                    randomNum2 = randomNumber(context);
                    print('left : $randomNum1, right : $randomNum2');
                  });
                  showToast(
                      'Left dice : $randomNum1, Right dice : $randomNum2');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

int randomNumber(BuildContext context) {
  return Random().nextInt(6) + 1;
}

void showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
  );
}
