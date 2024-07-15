// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier {
  bool _isNavigated = false;

  void nxtScreen(BuildContext context) {
    if (!_isNavigated) {
      _isNavigated = true;
      Timer(const Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, '/loginScreen');
      });
    }
  }
}
