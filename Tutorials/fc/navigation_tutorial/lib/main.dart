import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_tutorial/screen/new_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            name: 'home',
            builder: (context, _) => const MyHome(),
          ),
          GoRoute(
            path: '/new1',
            name: 'new1',
            builder: (context, _) => const NewPage(),
          ),
          GoRoute(
            path: '/new2',
            name: 'new2',
            builder: (context, _) => const NewPage2(),
          )
        ],
      ),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
        useMaterial3: false,
      ),
      // home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  late int index;

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      appBar: AppBar(
        title: const Text('flutter에서 화면 이동하기'),
      ),
      body: homeBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
        ],
        currentIndex: index,
        onTap: (newIndex) {
          setState(() {
            print(newIndex);
            index = newIndex;
          });
        },
      ),
    );
  }

  Widget homeBody() {
    switch (index) {
      case 1:
        return Container(
          height: 800,
          color: Colors.green,
        );
      case 2:
        return Container(
          height: 800,
          color: Colors.blue,
        );

      case 0:
      default:
        return Center(
          child: TextButton(
            child: const Text('Go to page'),
            onPressed: () {
              context.pushNamed('new1');
            },
          ),
        );
    }
  }
}
