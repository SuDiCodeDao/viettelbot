import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import '../controllers/otp_controller.dart';
import '../pages/login/login_page.dart';
import '../pages/otp/otp_page.dart';

final Map<String, WidgetBuilder> routes = {
  LoginPage.routeName: (context) {
    Get.put(LoginController());
    return const LoginPage();
  },
  OTPPage.routeName: (context) {
    Get.put(OTPController());
    return const OTPPage();
  },
};
