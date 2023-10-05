import 'package:flutter/material.dart';
import 'package:viettelbot/src/app/controllers/login_controller.dart';
import 'package:viettelbot/src/app/widgets/arrow_button.dart';
import 'package:viettelbot/src/core/utils/app_config.dart';

import '../../../../core/constants/text_strings.dart';
import 'text_field.dart';

class Body extends StatelessWidget {
  Body({
    Key? key,
    required this.loginController,
  }) : super(key: key);
  final LoginController loginController;
  final TextEditingController phoneEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(AppConfig.screenWidth! * 0.05),
        child: Container(
          margin: EdgeInsets.symmetric(
              vertical: 0.03 * AppConfig.screenHeight!,
              horizontal: 0.04 * AppConfig.screenWidth!),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/human.png"),
                const Text(
                  vLoginText,
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: AppConfig.screenHeight! * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 0.01 * AppConfig.screenWidth!,
                      vertical: 0.04 * AppConfig.screenHeight!),
                  child: const Text(
                    'Chúng tôi sẽ gửi cho bạn 1 mã OTP qua số điện thoại của bạn',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                LoginTextField(
                  keyboardType: TextInputType.phone,
                  hintText: 'Nhập số điện thoai',
                  controller: phoneEditingController,
                ),
                SizedBox(
                  height: AppConfig.screenHeight! * 0.02,
                ),
                ArrowButton(onPressed: () {}, buttonText: 'Đăng nhập với OTP'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
