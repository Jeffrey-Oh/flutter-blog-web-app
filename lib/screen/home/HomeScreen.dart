import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jeffrey Oh Blog'),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: 'https://jeffrey-oh.tistory.com',
        javascriptMode: JavascriptMode.unrestricted, // WebView를 사용할 때 꼭 Javascript 를 설정할 것
      ),
    );
  }
}
