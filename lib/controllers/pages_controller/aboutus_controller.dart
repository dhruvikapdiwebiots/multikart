import 'package:multikart/common/array/about_us_array.dart';

import '../../config.dart';

class AboutUsController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());


  AboutUsModel? aboutUsModel;


  @override
  void onReady() {
    // TODO: implement onReady
    aboutUsModel = aboutUs;
    update();
    super.onReady();
  }
}
