import 'package:flutter/material.dart';

import '../pages/login/login_page.dart';
import '../pages/otp/otp_page.dart';

final Map<String, WidgetBuilder> routes = {
  LoginPage.routeName: (context) => const LoginPage(),
  OTPPage.routeName: (context) => const OTPPage(),
};
