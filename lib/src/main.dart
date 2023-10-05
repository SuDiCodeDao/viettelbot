import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viettelbot/src/app/pages/login_page/login_page.dart';
import 'package:viettelbot/src/core/themes/theme.dart';
import 'package:viettelbot/src/core/utils/app_config.dart';

import 'app/routes/app_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConfig.getScreenSize(context);
    return GetMaterialApp(
      theme: VAppTheme.lightTheme,
      themeMode: ThemeMode.system,
      initialRoute: LoginPage.routeName,
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}
