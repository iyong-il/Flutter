import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                foregroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.white;
                    }
                    return Colors.black;
                  },
                ),
                padding: MaterialStateProperty.resolveWith((states) {
                  if(states.contains(MaterialState.pressed)) {
                    return const EdgeInsets.all(50);
                  }
                  return const EdgeInsets.all(30);
                })
              ),
              child: const Text('Button Style'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.red,
                shadowColor: Colors.yellow,
                elevation: 10.0,
              ),
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(backgroundColor: Colors.yellow),
              child: const Text('OutlinedButton'),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  foregroundColor: Colors.brown, backgroundColor: Colors.grey),
              child: const Text('Text Button'),
            )
          ],
        ),
      ),
    );
  }
}
