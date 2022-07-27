
import 'package:multikart/config.dart';

class LoginController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  bool isBack = false;
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  bool passwordVisible = true;

  // Toggle Between Password show
  toggle() {
    passwordVisible = !passwordVisible;
    update();
  }

  //sign in
  signIn() async {
    /*if (loginformKey.currentState!.validate()) {
      log('Validation');
    } else {
      log('No Valid');
    }*/
    FocusScopeNode currentFocus = FocusScope.of(Get.context!);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
    Get.offAllNamed(routeName.dashboard);
  }

  @override
  void onReady() {
    // TODO: implement onReady
    isBack = Get.arguments ?? false;

    update();
    super.onReady();
  }

}
