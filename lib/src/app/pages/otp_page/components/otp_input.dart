import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTPInputWidget extends StatefulWidget {
  const OTPInputWidget({Key? key, this.onCodeChanged, this.onSubmit})
      : super(key: key);
  final Function(String)? onCodeChanged;
  final Function(String)? onSubmit;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return OtpTextField(
      numberOfFields: 6,
      borderColor: Colors.grey,
      showFieldAsBox: true,
      onCodeChanged: (String code) {
        onCodeChanged?.call(code);
      },
      onSubmit: (String verificationCode) {
        onSubmit?.call(verificationCode);
      },
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
