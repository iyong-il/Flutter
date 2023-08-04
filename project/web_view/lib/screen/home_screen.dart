import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final googleUrl = Uri.parse('https://www.google.co.kr/?hl=ko');
final naverUrl = Uri.parse('https://www.naver.com/');

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<WebViewController> controllers;

  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    controllers = [
      webViewController(uri: googleUrl),
      webViewController(uri: naverUrl)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _currentIndex == 0 ? 'Google' : 'Naver',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            // http://는 ios, android 모두 기본적으로는 금지하고 있다.

            // ios > Runner > info.Plist에
            // <key>NSAppTransportSecurity</key>
            // <dict>
            //  <key>NSAllowsLocalNetworking</key>
            //  <true/>
            //  <key>NSAllowsArbitraryLoadsInWebContent</key>
            //  <true/>
            // </dict>
            // 작성해준다.

            // Android > app > src > main > AndroidManifest.xml에
            // <uses-permission android:name="android.permission.INTERNET"/>
            // android:usesCleartextTraffic="true"
            // 추가해준다.
            switch (_currentIndex) {
              case 1:
                controllers[_currentIndex].loadRequest(naverUrl);
              case 0:
              default:
                controllers[_currentIndex].loadRequest(googleUrl);
            }
            // _currentIndex == 0
            //     ? controllers[_currentIndex].loadRequest(googleUrl)
            //     : controllers[_currentIndex].loadRequest(naverUrl);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.home,
            ),
            onPressed: () {
              debugPrint('home icon Clicked');
            },
          )
        ],
      ),
      body: WebViewWidget(controller: controllers[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '구글'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: '네이버')
        ],
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
      // WebView(
      //   onWebViewCreated: (WebViewController controller) {
      //     this.controller = controller;
      //   },
      //   initialUrl: googleUrl,
      //   javascriptMode: JavascriptMode.unrestricted,
      // ),
    );
  }
}

WebViewController webViewController({required Uri uri}) {
  return WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(uri);
}
