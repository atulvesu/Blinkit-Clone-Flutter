import 'package:flutter/widgets.dart';

class Dimensions {
  static double screenHeight = 0;
  static double screenWidth = 0;

  static double height(double value) {
    return (value / 812.0) * screenHeight;
  }

  static double width(double value) {
    return (value / 375.0) * screenWidth;
  }

  static double fontSize(double value) {
    return (value / 812.0) * screenHeight;
  }

  static double padding(double value) {
    return (value / 812.0) * screenHeight;
  }

  static double margin(double value) {
    return (value / 812.0) * screenHeight;
  }

  static void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
  }
}
