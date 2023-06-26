import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SnackBar',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SNACK BAR'),
        centerTitle: true,
        elevation: 0.0,
      ),
      // body: Builder(
      //   builder: (ctx) {
      //     return Center(
      //       child: TextButton(
      //         onPressed: () {
      //           ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
      //             content: Text('Hello👍'),
      //           ));
      //           print('show me button clicked');
      //         },
      //         child: Text(
      //           'Show me',
      //           style: TextStyle(color: Colors.white),
      //         ),
      //         style: ButtonStyle(
      //             backgroundColor: MaterialStateProperty.all(Colors.grey)),
      //       ),
      //     );
      //   }
      // ),
      // body: MySnackBar(),
      body: Center(
        child: TextButton(
          onPressed: () {
            // print('show me button Tapped');
            flutterToast();
          },
          child: Text('toast button'),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.lightBlue)),
        ),
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
    msg: 'Flutter',
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.redAccent,
    fontSize: 20.0,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,
  );
}

// class MySnackBar extends StatelessWidget {
//   const MySnackBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         child: Text('Show Me'),
//         style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.all(Colors.grey),
//         ),
//         onPressed: () {
//           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//             content: Text(
//               'Hello',
//               textAlign: TextAlign.center,
//             ),
//             duration: Duration(milliseconds: 2000),
//           ));
//           print('button show');
//         },
//       ),
//     );
//   }
// }
