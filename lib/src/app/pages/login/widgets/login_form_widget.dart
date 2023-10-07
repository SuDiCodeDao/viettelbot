import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:viettelbot/src/app/controllers/login_controller.dart';
import 'package:viettelbot/src/app/pages/login/widgets/phone_input_form_widget.dart';
import 'package:viettelbot/src/app/widgets/button_widget.dart';

import '../../otp/otp_page.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginController());
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          PhoneInputFormWidget(
            hintText: 'Nhập số điện thoại',
            keyboardType: TextInputType.phone,
            onChanged: (String value) {
              loginController.phoneNumber.text = value;
            },
            controller: loginController.phoneNumber,
          ),
          SizedBox(height: 20.h),
          ButtonWidget(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  LoginController.instance.phoneAuthentication(
                      loginController.phoneNumber.text.trim());
                  Get.to(const OTPPage());
                }
              },
              icon: Icons.arrow_forward_ios,
              text: 'Đăng nhập với OTP'),
        ],
      ),
    );
  }
}
