import 'dart:async';
import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier {
  bool _isNavigated = false;

  void nxtScreen(BuildContext context) {
    if (!_isNavigated) {
      _isNavigated = true;
      Timer(Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, '/loginScreen');
      });
    }
  }
}
