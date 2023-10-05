import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viettelbot/src/app/pages/otp_page/components/body.dart';

import '../../controllers/otp_controller.dart';

class OTPPage extends GetView<OTPController> {
  static String routeName = '/otp';
  const OTPPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final otpController = Get.put(OTPController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios, color: Colors.red),
      ),
      body: Body(
        otpController: otpController,
      ),
    );
  }
}
