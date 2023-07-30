import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late int _index;

  @override
  void initState() {
    super.initState();
    _index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('스낵바가 열렸습니다.'),
              duration: Duration(seconds: 3),
              elevation: 0.0,
              showCloseIcon: true,
              closeIconColor: Colors.black,
            ),
          );
        },
        elevation: 0.0,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: const Text('flutter 화면 이동'),
        elevation: 0.0,
      ),
      body: homeBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'person',
          ),
        ],
        currentIndex: _index,
        onTap: (newIndex) => setState(() => _index = newIndex),
      ),
    );
  }

  Widget homeBody() {
    switch (_index) {
      case 1:
        return Container(
          height: 500,
          width: double.infinity,
          color: Colors.green,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: 200,
                    height: 800,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
          ),
        );
      case 2:
        return Container(
          height: 800,
          color: Colors.red,
          child: const Center(
            child: Text(
              '세번째 화면',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        );

      case 0:
      default:
        return Center(
          child: TextButton(
            child: Text('Go to page', style: Theme.of(context).textTheme.titleMedium,),
            onPressed: () => context.pushNamed('new1'),
          ),
        );
    }
  }
}
