import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:viettelbot/src/app/pages/home/home_page.dart';
import 'package:viettelbot/src/app/pages/login/login_page.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find();
  var verificationId = ''.obs;
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 6));
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const LoginPage())
        : Get.offAll(() => const HomePage());
  }

  Future<void> phoneAuthentiation(String phoneNumber) async {
    await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (credential) async {
          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (e) {
          if (e.code == 'Số điện thoại không hợp lệ') {
            Get.snackbar("Lỗi", "Số điện thoại bạn cung cấp không hợp lệ");
          } else {
            Get.snackbar("Lỗi", "Có lỗi xảy ra. Thử lại");
          }
        },
        codeSent: (verificationId, resendToken) {
          this.verificationId.value = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId) {
          this.verificationId.value = verificationId;
        });
  }

  Future<bool> verifyOTP(String otp) async {
    var credential = await _auth.signInWithCredential(
        PhoneAuthProvider.credential(
            verificationId: verificationId.value, smsCode: otp));
    return credential.user != null ? true : false;
  }

  Future<void> logOut() async => await _auth.signOut();
}
