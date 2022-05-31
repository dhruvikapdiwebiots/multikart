import 'package:multikart/config.dart';
import 'package:multikart/views/authentication_page/otp/otp.dart';

class ForgotPasswordController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  TextEditingController txtEmail = TextEditingController();

  //sentOtp
  sendOtp() {
    Get.defaultDialog(
        title: '',
        barrierDismissible: false,
        titlePadding: EdgeInsets.zero,
        radius: 5,
        content: OtpScreen());
  }
}
