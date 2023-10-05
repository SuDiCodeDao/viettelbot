import 'package:flutter/material.dart';
import 'package:viettelbot/src/app/pages/login_page/login_page.dart';
import 'package:viettelbot/src/app/pages/otp_page/otp_page.dart';

final Map<String, WidgetBuilder> routes = {
  LoginPage.routeName: (context) => const LoginPage(),
  OTPPage.routeName: (context) => const OTPPage(),
};
