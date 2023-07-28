import 'package:flutter/material.dart';
import 'screens/screens.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  int _currentIndex = 0;

  static List<Widget> screens = [
    const HomeScreen(),
    const RecodingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _configureAppBarTitle(),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: '기록'),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: screens[_currentIndex],
    );
  }

  Widget _configureAppBarTitle() {
   return _currentIndex == 0
        ? const Text(
      '오늘 할 운동은?',
      style: TextStyle(fontWeight: FontWeight.bold),
    )
        : const Text(
      '나의 운동 기록',
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
