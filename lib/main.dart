import 'dart:math';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyWebView(),
  ));
}

class MyWebView extends StatelessWidget {
  const MyWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // إضافة معلمة عشوائية إلى الرابط لمنع التخزين المؤقت
    String url = "https://minamagdy2.github.io/working/?v=${Random().nextInt(10000)}";

    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: url,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
