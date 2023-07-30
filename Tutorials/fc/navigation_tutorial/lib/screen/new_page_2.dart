import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('새로운 페이지2'),
        elevation: 0,
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to Home'),
          onPressed: () => context.goNamed('home'),
        ),
      ),
    );
  }
}
