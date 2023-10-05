import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viettelbot/src/app/pages/login_page/components/body.dart';

import '../../controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);
  static String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginController());
    return Body(
      loginController: loginController,
    );
  }
}
