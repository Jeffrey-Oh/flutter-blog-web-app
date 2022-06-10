import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = 'https://jeffrey-oh.tistory.com';

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jeffrey Oh Blog'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            if (controller == null) {
              return;
            }
            controller!.loadUrl(homeUrl);
          }, icon: Icon(
            Icons.home
          ))
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted, // WebView를 사용할 때 꼭 Javascript 를 설정할 것
      ),
    );
  }
}
