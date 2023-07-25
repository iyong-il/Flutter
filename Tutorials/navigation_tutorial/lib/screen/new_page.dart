import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('새로운 페이지'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  context.pushNamed('new2');
                },
                child: const Text('Go to second')),
            TextButton(
              child: const Text('Go to Back'),
              onPressed: () {
                context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('새로운 페이지2'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to Home'),
          onPressed: () {
            context.goNamed('home');
          },
        ),
      ),
    );
  }
}
