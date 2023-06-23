import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SnackBar',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SNACK BAR'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Builder(
        builder: (ctx) {
          return Center(
            child: TextButton(
              onPressed: () {
                ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
                  content: Text('Hello👍'),
                ));
                print('show me button clicked');
              },
              child: Text(
                'Show me',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey)),
            ),
          );
        }
      ),
    );
  }
}
