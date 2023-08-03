import 'package:flutter/material.dart';
import 'package:shake/shake.dart';
import 'package:shake_count/red_box.dart';
import 'package:velocity_x/velocity_x.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.title});

  final String title;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  late int _count;
  late ShakeDetector detector;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _count = 0;
    detector = ShakeDetector.autoStart(
      onPhoneShake: () => setState(() => _count++),
      shakeThresholdGravity: 1.5,
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const RedBox(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const RedBox(),
                '$_count'.text.size(70).bold.make().pSymmetric(h: 40, v: 30),
                const RedBox(),
              ],
            ),
            const RedBox(),
          ],
        ),
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.detached:
        // TODO: Handle this case.
        print('detatched');
      case AppLifecycleState.resumed:
        print('resume');
        detector.startListening();
      case AppLifecycleState.inactive:
        print('inactive');
      case AppLifecycleState.hidden:
        print('hidden');
      case AppLifecycleState.paused:
        detector.stopListening();
        print('paused');
    }
  }
}
