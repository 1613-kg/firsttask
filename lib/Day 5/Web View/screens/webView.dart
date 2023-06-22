import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webView extends StatefulWidget {
  const webView({super.key});

  @override
  State<webView> createState() => _webViewState();
}

class _webViewState extends State<webView> {
  late final WebViewController _controller;

  void WebControl() {
    String url =
        "https://www.google.com/search?q=github&rlz=1C1CHBD_enIN933IN933&oq=&aqs=chrome.0.69i59i450l8.647884369j0j15&sourceid=chrome&ie=UTF-8";
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (navigation) {
            if (navigation.url != url) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(url));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WebControl();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    WebControl();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebView"),
      ),
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}
