import 'package:flutter/material.dart';
import 'Dice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text('Log In'),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: Builder(
          builder: (context) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Center(
                    child: Image(
                      image: AssetImage('assets/images/chef.gif'),
                      width: 170.0,
                      height: 190.0,
                    ),
                  ),
                  Form(
                      child: Theme(
                          data: ThemeData(
                              primaryColor: Colors.teal,
                              inputDecorationTheme: InputDecorationTheme(
                                  labelStyle: TextStyle(
                                      color: Colors.teal, fontSize: 15.0))),
                          child: Container(
                            padding: EdgeInsets.all(40.0),
                            child: Column(
                              children: [
                                TextField(
                                  autofocus: true,
                                  controller: controller1,
                                  decoration: InputDecoration(
                                      labelText: 'Enter "dice"'),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                TextField(
                                  controller: controller2,
                                  decoration: InputDecoration(
                                      labelText: 'Enter Password'),
                                  keyboardType: TextInputType.number,
                                  obscureText: true,
                                ),
                                SizedBox(
                                  height: 40.0,
                                ),
                                ButtonTheme(
                                  minWidth: 100.0,
                                  height: 50.0,
                                  child: ElevatedButton(
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 35.0,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0.0,
                                        backgroundColor: Colors.orangeAccent),
                                    onPressed: () {
                                      if (controller1.text == 'dice' &&
                                          controller2.text == '1234') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        Dice()));
                                        controller1.text = '';
                                        controller2.text = '';
                                      } else if (controller1.text != 'dice' &&
                                          controller2.text == '1234') {
                                        showSnackBar(context, '아이디를 확인하세요');
                                      } else if (controller1.text == 'dice' &&
                                          controller2.text != '1234') {
                                        showSnackBar(context, '비밀번호를 확인하세요');
                                      } else {
                                        print('NA!!!!!!!!!!');
                                        showSnackBar(context, '정보를 입력해 주세요!');
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

void showSnackBar(BuildContext context, String title) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      title,
      textAlign: TextAlign.center,
    ),
    backgroundColor: Colors.red[200],
    duration: Duration(seconds: 2),
  ));
}

