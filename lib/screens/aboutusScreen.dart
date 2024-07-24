// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  WebViewController webViewController = WebViewController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const CircleAvatar(
                child: Center(child: Icon(Icons.arrow_back_outlined)),
              ),
            ),
            Expanded(
              child: WebViewWidget(
                  controller: webViewController
                    ..loadRequest(Uri.parse('https://blinkit.com/aboutus'))),
            ),
          ],
        ),
      ),
    );
  }
}
