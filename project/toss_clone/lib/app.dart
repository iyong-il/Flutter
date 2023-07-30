import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/theme/custom_theme_app.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  static bool isForeground = true;

  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> with Nav, WidgetsBindingObserver {
  @override
  GlobalKey<NavigatorState> get navigatorKey => App.navigatorKey;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomThemeApp(
      child: Builder(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: App.navigatorKey,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          title: 'Image Finder',
          theme: context.themeType.themeData,
          home: const MainScreen(),
        );
      }),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      // 앱이 재개된 상태입니다. 예를 들어, 앱이 포그라운드로 진입한 경우에 해당합니다.
      case AppLifecycleState.resumed:
        App.isForeground = true;
        break;
      // 앱이 비활성화 상태입니다. 예를 들어, 다른 앱으로 전환되거나 화면이 꺼진 경우에 해당합니다.
      case AppLifecycleState.inactive:
        break;
      // 앱이 일시 정지 상태입니다. 예를 들어, 앱이 백그라운드로 들어간 경우에 해당합니다.
      case AppLifecycleState.paused:
        App.isForeground = false;
        break;
      // 앱이 완전히 종료되거나 분리된 상태입니다. 이는 iOS에서만 발생할 수 있으며, 앱이 종료될 때 호출됩니다.
      case AppLifecycleState.detached:
        break;
      case AppLifecycleState.hidden:
      // TODO: Handle this case.
    }
    super.didChangeAppLifecycleState(state);
  }
}
