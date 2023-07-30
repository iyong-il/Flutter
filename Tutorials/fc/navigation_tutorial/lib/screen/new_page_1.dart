import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage1 extends StatelessWidget {
  const NewPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('새로운 페이지1'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () => context.pushNamed('new2'),
                // main.dart에서 font 커스텀 하고 불러오기
                child: Text('Go to second', style: Theme.of(context).textTheme.titleMedium,)),
            TextButton(
              child: const Text('Go to Back'),
              onPressed: () => context.pop(),
            ),
          ],
        ),
      ),
    );
  }
}
