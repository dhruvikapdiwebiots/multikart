import 'package:flutter/material.dart';
import 'package:multikart/config.dart';

class SplashController extends GetxController {
  bool isTapped = false;

  @override
  void onInit() async {
    await Future.delayed(Durations.s1);
    isTapped = true;
    update();
    await Future.delayed(Durations.s3);
    checkLogin();
    super.onInit();
  }

  void checkLogin() async {
    //#region set Language
    String? languageCode = getStorage(Session.languageCode);
    String? countryCode = getStorage(Session.countryCode);
    if (languageCode != null && countryCode != null) {
      var locale = Locale(languageCode, countryCode);
      Get.updateLocale(locale);
    } else {
      Get.updateLocale(Get.deviceLocale ?? const Locale('en', 'US'));
    }
    //#endregion
    Get.toNamed(routeName.onBoarding);
  }
}
