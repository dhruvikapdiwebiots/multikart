import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:multikart/config.dart';

class SignUpController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  final socialLoginCtrl = Get.isRegistered<SocialLoginController>()
      ? Get.find<SocialLoginController>()
      : Get.put(SocialLoginController());

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtName = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final FocusNode nameFocus = FocusNode();
  bool passwordVisible = true;
  var auth = FirebaseAuth.instance;

  // Toggle Between Password show
  toggle() {
    passwordVisible = !passwordVisible;
    update();
  }

  //sign in
  signIn() async {
    if (signupFormKey.currentState!.validate()) {
      txtName.text = "";
      txtEmail.text = "";
      txtPassword.text = "";
      FocusScope.of(Get.context!).requestFocus(FocusNode());
      update();
      Get.back();
    } else {
      log('No Valid');
    }
  }


//sign in tap function
  signInClick({context}) async {
    socialLoginCtrl.showLoading();
    update();
    FocusScopeNode currentFocus = FocusScope.of(Get.context!);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
    try {
      var user = await auth.createUserWithEmailAndPassword(
          email: txtEmail.text, password: txtPassword.text);
      await user.user!.getIdToken();
      socialLoginCtrl.hideLoading();
      update();
      txtName.text = "";
      txtEmail.text = "";
      txtPassword.text = "";
      FocusScope.of(Get.context!).requestFocus(FocusNode());
      update();
      Get.back();
    } catch (e) {
      socialLoginCtrl.hideLoading();
      update();
      socialLoginCtrl.showToast(e.toString());
    }

  }

}
