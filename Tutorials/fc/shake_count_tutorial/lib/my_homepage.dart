import 'package:flutter/material.dart';
import 'package:shake/shake.dart';
import 'package:velocity_x/velocity_x.dart';

import 'blue_box.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  int _counter = 0;

  late ShakeDetector shakeDetector;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    shakeDetector = ShakeDetector.autoStart(
      onPhoneShake: () {
        setState(() {
          _counter--;
        });
      },
      shakeThresholdGravity: 1.5,
    );

    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.addObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const BlueWidget(),
                Column(
                  children: [
                    const BlueWidget(),
                    '흔들어서 카운트를 올려보세요'
                        .text
                        .size(14)
                        .color(Colors.lightBlue)
                        .bold
                        .black
                        .make()
                        .box
                        .color(Colors.green)
                        .size(70, 70)
                        .make()
                        .pOnly(left: 20, top: 30, right: 50, bottom: 20),
                    const BlueWidget(),
                  ],
                ),
                const BlueWidget(),
              ],
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.detached:
      // TODO: Handle this case.
      case AppLifecycleState.resumed:
        // TODO: Handle this case.
        shakeDetector.startListening();
      case AppLifecycleState.inactive:
      // TODO: Handle this case.
      case AppLifecycleState.hidden:
      // TODO: Handle this case.
      case AppLifecycleState.paused:
        // TODO: Handle this case.
        shakeDetector.stopListening();
    }
    super.didChangeAppLifecycleState(state);
  }
}
