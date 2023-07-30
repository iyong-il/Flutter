import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_tutorial/screen/new_page_1.dart';

import 'app.dart';
import 'screen/new_page_2.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            name: 'home',
            builder: (context, _) => const App(),
          ),
          GoRoute(
            path: '/new1',
            name: 'new1',
            builder: (context, _) => const NewPage1(),
          ),
          GoRoute(
            path: '/new2',
            name: 'new2',
            builder: (context, _) => const NewPage2(),
          )
        ],
      ),
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
            primary: Colors.indigo,
            secondary: Colors.green,
            tertiary: Colors.yellow),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
        ),
        useMaterial3: true,
        textTheme: const TextTheme(
            titleMedium: TextStyle(fontSize: 32, color: Colors.yellow)
        )
      ),
      debugShowCheckedModeBanner: false,
      // home: MyHome(),
    );
  }
}
