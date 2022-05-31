import 'dart:developer';

import 'package:multikart/config.dart';

class SignUpController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtName = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final FocusNode nameFocus = FocusNode();
  bool passwordVisible = true;

  // Toggle Between Password show
  toggle() {
    passwordVisible = !passwordVisible;
    update();
  }

  //sign in
  signIn() async {
    if (signupFormKey.currentState!.validate()) {
      log('Validation');
    } else {
      log('No Valid');
    }
  }

/*
  @override
  void onReady() async {
    super.onReady();
  }*/
}
