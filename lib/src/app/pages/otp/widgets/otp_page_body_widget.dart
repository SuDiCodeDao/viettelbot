import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:viettelbot/src/app/pages/otp/widgets/otp_form_widget.dart';
import 'package:viettelbot/src/app/pages/otp/widgets/resend_otp_link_widget.dart';
import 'package:viettelbot/src/app/widgets/header_widget.dart';

class OTPPageBodyWidget extends GetWidget {
  const OTPPageBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const HeaderWidget(
                imagePath: "assets/images/otp_authentication.png",
                title: "Nhập mã OTP"),
            SizedBox(height: 20.h),
            const OTPFormWidget(),
            SizedBox(height: 20.h),
            const ResendOTPLinkWidget(),
          ],
        ),
      ),
    );
  }
}
