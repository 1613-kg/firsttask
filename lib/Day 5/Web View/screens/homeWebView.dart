import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'webView.dart';

class homeWebView extends StatefulWidget {
  const homeWebView({super.key});

  @override
  State<homeWebView> createState() => _homeWebViewState();
}

class _homeWebViewState extends State<homeWebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebView Screen"),
      ),
      body: Center(
          child: TextButton(
              child: Text("Go to WebView"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (webView())));
              })),
    );
  }
}
