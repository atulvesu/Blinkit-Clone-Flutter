import 'package:flutter/material.dart';

class loginProvider extends ChangeNotifier {
  String _url = '';

  String get url => _url;

  void setUrl(String url) {
    _url = url;
    notifyListeners();
  }
}
