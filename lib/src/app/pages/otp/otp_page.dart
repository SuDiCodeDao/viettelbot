import 'package:flutter/material.dart';
import 'package:viettelbot/src/app/pages/otp/widgets/otp_page_body_widget.dart';

import '../../widgets/appbar_widget.dart';

class OTPPage extends StatelessWidget {
  static String routeName = '/otp';
  const OTPPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(),
      body: OTPPageBodyWidget(),
    );
  }
}
