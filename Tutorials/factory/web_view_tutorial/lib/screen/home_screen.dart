import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://blog.codefactory.ai');

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(homeUrl);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '블로그',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
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

            controller.loadRequest(homeUrl);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              print('home icon Clicked');
            },
          )
        ],
      ),
      body: WebViewWidget(controller: controller)
      // WebView(
      //   onWebViewCreated: (WebViewController controller) {
      //     this.controller = controller;
      //   },
      //   initialUrl: homeUrl,
      //   // 필수로 넣어줘야한다!!
      //   javascriptMode: JavascriptMode.unrestricted,
      // ),
    );
  }
}
