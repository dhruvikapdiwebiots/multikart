
import 'package:multikart/config.dart';

class LoginController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  GlobalKey<FormState> loginformKey = GlobalKey<FormState>();
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
    Get.toNamed(routeName.dashboard);
  }

}
