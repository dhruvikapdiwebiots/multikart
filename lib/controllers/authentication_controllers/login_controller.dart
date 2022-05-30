
import 'package:multikart/config.dart';

class LoginController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());
/*
  @override
  void onReady() async {
    super.onReady();
  }*/
}
