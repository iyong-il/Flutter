import 'package:flutter/material.dart';

import 'screen/home_screen.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
              color: Colors.white,
              fontFamily: 'Parisienne',
              fontSize: 80,
            ),
          ),
        ),
        home: const HomeScreen(),
      ),
    );
