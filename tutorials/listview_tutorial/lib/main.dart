import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    var titleList = [
      'Dentist',
      'Pharmacist',
      'School teacher',
      'IT Manager',
      'Account',
      'Lawyer',
      'Hairdresser',
      'Physician',
      'Web developer',
      'Medical Secretary'
    ];

    // 반응형을 위한 변수 선언(화면의 60퍼센트)
    double width = MediaQuery.of(context).size.width * 0.6;
    double width2 = MediaQuery.of(context).size.width * 0.7;

    void showPopup(context, title) {
      showDialog(context: context, builder: (context) => Dialog(
        child: Container(
          width: width2,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title)
            ],
          ),
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              debugPrint(titleList[index]);
              showPopup(context, titleList[index]);
            },
            child: Card(
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Text(titleList[index]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(titleList[index]),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: titleList.length,
      ),
    );
  }
}
