import 'package:firebase_login/my_button/my_button.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(
                text: Text('Login with Google'),
                onPressed: () {
                  print('google button tapped');
                }),
            SizedBox(
              height: 10,
            ),
            MyButton(
                text: Text('Login with Facebook'),
                onPressed: () {
                  print('Facebook button tapped');
                }),
            SizedBox(
              height: 10,
            ),
            MyButton(
                text: Text('Login with Email'),
                onPressed: () {
                  print('Email button tapped');
                }),
          ],
        ),
      ),
    );
  }
}
