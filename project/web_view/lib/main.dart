import 'package:flutter/material.dart';

import 'screen/home_screen.dart';

void main() {
  // flutter 프레임워크가
  // 앱을 실행할 준비가 될 때까지 기다린다.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}
// ...PlatformException...이 나오면 terminal에 flutter clean을 해줘야한다.
