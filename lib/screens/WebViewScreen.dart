import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  final String url;

  WebViewScreen({required this.url});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  @override
  Widget build(BuildContext context) {
    WebViewController webViewController = WebViewController();
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: CircleAvatar(
                  child: Center(child: Icon(Icons.arrow_back_outlined)))),
          Expanded(
            child: WebViewWidget(
                controller: webViewController
                  ..loadRequest(Uri.parse(widget.url))),
          ),
        ],
      ),
    ));
  }
}
