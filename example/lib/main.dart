import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            title: const Text('Study to Container'),
          ),
          body: const CustomContainer()),
    ),
  );
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = 300;
    double height = 300;

    return Center(
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
        decoration: BoxDecoration(
            color: const Color(0x8CC78FFF),
            border: Border.all(
                color: Colors.red, width: 5.0, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(width / 2),
            boxShadow: [
               BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(6, 6),
                 blurRadius: 10,
                 spreadRadius: 10
              ),
              BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  offset: const Offset(-6, -6),
                  blurRadius: 10,
                  spreadRadius: 10
              )
            ]),
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            color: Colors.yellow,
            child: const Text(
              'Hello Container!',
            ),
          ),
        ),
      ),
    );
  }
}
