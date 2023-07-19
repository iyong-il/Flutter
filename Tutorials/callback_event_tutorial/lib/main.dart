import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


const assetImage = 'assets/images/';
const profileImage = '${assetImage}person_crispy.png';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Flutter의 Callback'),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RandomWords(),
          Text(
            'Count : $value',
            style: const TextStyle(fontSize: 30.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          AddButton(
            voidCallback: addCounter,
          ),
          const SizedBox(
            height: 16.0,
          ),
          MinusButton(
            callback: minusCounter,
          ),
          SizedBox(
            height: 16,
          ),
          CircleAvatar(
            child: Image.asset(
              profileImage,
            ),
            radius: 44,
          ),
        ],
      ),
    );
  }

  void addCounter() {
    setState(
      () {
        ++value;
        print('value - $value');
      },
    );
  }

  void minusCounter(int addValue) {
    if (value > 0) {
      setState(
        () {
          value -= addValue;
          print('value - $value');
        },
      );
    } else {
      return;
    }
  }
}

class AddButton extends StatelessWidget {
  const AddButton({super.key, required this.voidCallback});

  final VoidCallback voidCallback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          'Up Counter',
          style: TextStyle(fontSize: 24),
        ),
      ),
      onTap: () => voidCallback.call(),
    );
  }
}

class MinusButton extends StatelessWidget {
  const MinusButton({super.key, required this.callback});

  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Text(
          'DOWN Counter',
          style: TextStyle(fontSize: 24),
        ),
      ),
      onTap: () => callback.call(1),
      onDoubleTap: () => callback.call(5),
    );
  }
}

class RandomWords extends StatelessWidget {
  const RandomWords({super.key});

  @override
  Widget build(BuildContext context) {
    final wordList = generateWordPairs().take(1).toList();
    final widgets = wordList
        .map(
          (word) => Text(
            word.asCamelCase,
          ),
        )
        .toList();
    return Column(
      children: widgets,
    );
  }
}
