import 'package:flutter/cupertino.dart';

class AppConfig {
  static double? screenWidth, screenHeight;
  static void getScreenSize(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }
}
