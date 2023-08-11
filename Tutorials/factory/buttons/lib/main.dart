import 'package:flutter/material.dart';

import 'screen/home_screen.dart';

void main() {
  runApp(
     MaterialApp(
      theme: ThemeData(
        useMaterial3: false
      ),
      home: HomeScreen(),
    ),
  );
}
