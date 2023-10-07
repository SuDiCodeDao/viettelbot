import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:viettelbot/src/app/repositories/auth_repository.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();
  final TextEditingController phoneNumber = TextEditingController();

  void phoneAuthentication(String phoneNumber) {
    final String formattedNumber = '+84$phoneNumber';
    AuthRepository.instance.phoneAuthentiation(formattedNumber);
  }
}
