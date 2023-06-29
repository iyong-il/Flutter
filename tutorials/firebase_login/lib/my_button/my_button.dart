import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.text, this.onPressed});

  final Widget? text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: text,
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              minimumSize: Size(300, 50),
            ),
          ),
        ],
      ),
    );
  }
}
