import 'package:flutter/material.dart';
import 'package:navigator_tutorial/ScreenA.dart';
import 'package:navigator_tutorial/ScreenB.dart';
import 'package:navigator_tutorial/ScreenC.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'FirstPage',
//       home: FirstPage(),
//     );
//   }
// }
//
//
// class FirstPage extends StatelessWidget {
//   const FirstPage({super.key});
//
//   @override
//   Widget build(BuildContext context1) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Page'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//                 context1, MaterialPageRoute(builder: (_) => SecondPage()
//             ));
//           },
//           child: Text('go to the Second Button'),
//         ),
//       ),
//     );
//   }
// }
//
// class SecondPage extends StatelessWidget {
//   const SecondPage({super.key});
//
//   @override
//   Widget build(BuildContext context2) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Page'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               Navigator.pop(context2);
//             }, child: Text('go to the First Page')),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/A',
//       routes: {
//         '/A' : (context) => ScreenA(),
//         '/B' : (context) => ScreenB(),
//         '/C' : (context) => ScreenC(),
//       },
//     );
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          return Center(
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Screen()));
            }, child: Text('Go to Screen')),
          );
        }
      )
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext ctx) {
    return Scaffold();
  }
}
