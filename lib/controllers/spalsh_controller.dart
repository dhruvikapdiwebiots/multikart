
import 'package:get_storage/get_storage.dart';
import 'package:multikart/config.dart';

class SplashController extends GetxController {
  bool isTapped = false;
final storage = GetStorage();
  @override
  void onInit() async {
    await Future.delayed(Durations.s1);
    isTapped = true;
    update();
    await Future.delayed(Durations.s2);
    checkLogin();
    super.onInit();
  }

  void checkLogin() async {
    //#region set Language
    String? languageCode = storage.read(Session.languageCode);
    String? countryCode = storage.read(Session.countryCode);
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
