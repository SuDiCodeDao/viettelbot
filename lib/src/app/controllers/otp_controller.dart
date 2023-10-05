import 'package:get/get.dart';

import '../data/repositories/auth_repository.dart';

class OTPController extends GetxController {
  final authRepository = AuthRepository();
  var verificationId = ''.obs;
  var status = 'initial'.obs;
  var errorMsg = ''.obs;
  var smsCode = ''.obs;
}
