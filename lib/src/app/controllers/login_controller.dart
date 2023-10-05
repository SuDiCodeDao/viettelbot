import 'package:get/get.dart';
import 'package:viettelbot/src/app/data/repositories/auth_repository.dart';

class LoginController extends GetxController {
  final authRepository = AuthRepository();
  var phoneNumber = "".obs;
  var status = 'initial'.obs;
  var errorMsg = ''.obs;
}
