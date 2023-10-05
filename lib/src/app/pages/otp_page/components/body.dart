import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viettelbot/src/app/controllers/otp_controller.dart';
import 'package:viettelbot/src/app/pages/otp_page/components/otp_input.dart';
import 'package:viettelbot/src/app/widgets/arrow_button.dart';

import '../../../../core/utils/app_config.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.otpController,
  }) : super(key: key);
  final OTPController otpController;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (otpController.status.value == "loading") {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (otpController.status.value == 'failed') {
        Get.snackbar("Lỗi", otpController.errorMsg.value);
      }
      return SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Image.asset("assets/images/otp_authentication.png"),
              const Text(
                'Nhập mã OTP',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(height: 0.02 * AppConfig.screenHeight!),
              const OTPInputWidget(),
              SizedBox(height: 0.02 * AppConfig.screenHeight!),
              ArrowButton(onPressed: () {}, buttonText: 'Xác nhận'),
              SizedBox(height: 0.02 * AppConfig.screenHeight!),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "Không nhận được mã",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            color: Colors.red),
                        text: "Gửi lại ngay")
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
