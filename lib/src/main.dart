import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:viettelbot/src/app/repositories/auth_repository.dart';
import 'package:viettelbot/src/core/themes/theme.dart';
import 'package:viettelbot/src/firebase/firebase_options.dart';

import 'app/pages/login/login_page.dart';
import 'app/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.lazyPut(() => AuthRepository()));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 830),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return GetMaterialApp(
          theme: VAppTheme.lightTheme,
          themeMode: ThemeMode.system,
          initialRoute: LoginPage.routeName,
          debugShowCheckedModeBanner: false,
          routes: routes,
        );
      },
    );
  }
}
