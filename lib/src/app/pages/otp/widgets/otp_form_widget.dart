import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:viettelbot/src/app/controllers/otp_controller.dart';
import 'package:viettelbot/src/app/pages/otp/widgets/otp_input_form_widget.dart';

import '../../../widgets/button_widget.dart';

class OTPFormWidget extends StatelessWidget {
  const OTPFormWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String otp = '';
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        OTPInputFormWidget(
          onSubmit: (String code) {
            otp = code;
            OTPController.instance.verifyOTP(otp);
          },
        ),
        SizedBox(height: 20.h),
        ButtonWidget(
            onPressed: () {
              OTPController.instance.verifyOTP(otp);
            },
            text: 'Xác nhận'),
      ],
    );
  }
}
