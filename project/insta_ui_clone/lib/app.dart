import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'body.dart';
import 'widget/widgets.dart';

class InstaCloneApp extends StatelessWidget {
  const InstaCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.white,
          secondary: Colors.black,
        ),
        useMaterial3: true,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey),
      ),
      home: const InstaCloneHome(),
    );
  }
}

class InstaCloneHome extends StatefulWidget {
  const InstaCloneHome({super.key});

  @override
  State<InstaCloneHome> createState() => _InstaCloneHomeState();
}

class _InstaCloneHomeState extends State<InstaCloneHome> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    const double iconSize = 32;
    return Scaffold(
      appBar: index == 0
          ? AppBar(
              title: Text(
                'Instagram',
                style: GoogleFonts.lobsterTwo(
                  color: Colors.black,
                  fontSize: 32,
                ),
              ),
              centerTitle: false,
              actions: [
                iconButton(
                    icon: Icons.favorite_outline,
                    onPressed: () => print('favorite pressed')),
                iconButton(
                    icon: CupertinoIcons.paperplane,
                    onPressed: () => print('paperPlane pressed'))
              ],
            )
          : null,
      body: InstaBody(index: index),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) => setState(() => index = newIndex),
        currentIndex: index,
        items: [
          bottomItem(icon: Icons.home, size: iconSize, label: 'HOME'),
          bottomItem(icon: Icons.search, size: iconSize, label: 'Search')
        ],
      ),
    );
  }
}
