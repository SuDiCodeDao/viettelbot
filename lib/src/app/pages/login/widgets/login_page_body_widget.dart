import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:viettelbot/src/app/widgets/header_widget.dart';

import 'login_description_widget.dart';
import 'login_form_widget.dart';

class LoginPageBodyWidget extends StatelessWidget {
  const LoginPageBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(
                imagePath: 'assets/images/human.png', title: 'ĐĂNG NHẬP'),
            SizedBox(
              height: 10.h,
            ),
            const LoginDescriptionWidget(),
            SizedBox(
              height: 10.h,
            ),
            const LoginFormWidget(),
          ],
        ),
      ),
    );
  }
}
