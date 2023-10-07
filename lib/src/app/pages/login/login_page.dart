import 'package:flutter/material.dart';

import 'widgets/login_page_body_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);
  static String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: LoginPageBodyWidget(),
      ),
    );
  }
}
