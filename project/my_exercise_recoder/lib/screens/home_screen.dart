import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static List<String> todaysWorkout = ['가슴', '등', '어깨', '하체', '팔'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          ...todaysWorkout
              .map(
                (e) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => selectedWorkout(e)),
                    );
                  },
                  child: Container(
                    height: 100,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(
                      bottom: 40,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          e,
                          style: const TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ],
      )),
    );
  }
}

Widget selectedWorkout(String title) {
  switch (title) {
    case '가슴':
      return Container(
        color: Colors.orange,
      );
    case '어깨':
      return Container(
        color: Colors.grey,
      );
    case '등':
      return Container(
        color: Colors.green,
      );
    case '하체':
      return Container(
        color: Colors.blue,
      );
    case '팔':
      return Container(
        color: Colors.red,
      );
    default:
      return Container();
  }
}
