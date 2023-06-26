import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
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
                            labelStyle:
                                TextStyle(color: Colors.teal, fontSize: 15.0))),
                    child: Container(
                      padding: EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          TextField(
                            decoration:
                                InputDecoration(labelText: 'Enter "dice"'),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextField(
                            decoration:
                                InputDecoration(labelText: 'Enter Password'),
                            keyboardType: TextInputType.number,
                            obscureText: true,
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          ButtonTheme(
                            minWidth: 100,
                            height: 50,
                            child: ElevatedButton(
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.orangeAccent),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
