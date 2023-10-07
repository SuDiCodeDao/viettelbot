import 'package:get/get.dart';
import 'package:viettelbot/src/app/pages/home/home_page.dart';
import 'package:viettelbot/src/app/repositories/auth_repository.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();
  var verificationId = ''.obs;
  var status = 'initial'.obs;
  var errorMsg = ''.obs;
  var smsCode = ''.obs;

  void verifyOTP(String otp) async {
    var isVerified = await AuthRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const HomePage()) : Get.back();
  }
}
