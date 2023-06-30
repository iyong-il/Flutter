import 'package:firebase_login/my_button/my_button.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _configureAppbar(),
      drawer: _configureDrawer(),
      body: _configureBody(),
    );
  }
}

AppBar _configureAppbar() {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        print('icon button tapped');
      },
      icon: Icon(
        Icons.menu,
        color: Colors.white,
      ),
    ),
    title: Text(
      'Sign In',
      style: TextStyle(color: Colors.white),
    ),
    centerTitle: true,
    elevation: 0.0,
    backgroundColor: Colors.deepPurpleAccent,
    actions: [
      IconButton(
        icon: Icon(
          Icons.person,
          color: Colors.white,
        ),
        onPressed: () {
          print('person icons button tapped');
        },
      ),
      IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        onPressed: () {
          print('search icons button tapped');
        },
      ),
    ],
  );
}

Drawer _configureDrawer() {
  return Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
          ),
          child: Text(
            '내정보',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white,
                letterSpacing: 3.0),
          ),
        )
      ],
    ),
  );
}

Widget _configureBody() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyButton(
            text: Text('Login with Google'),
            onPressed: () {
              print('google button tapped');
            }),
        MyButton(
            text: Text('Login with Facebook'),
            onPressed: () {
              print('Facebook button tapped');
            }),
        MyButton(
            text: Text('Login with Email'),
            onPressed: () {
              print('Email button tapped');
            }),
      ],
    ),
  );
}
