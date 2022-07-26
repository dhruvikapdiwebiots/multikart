

import '../../config.dart';

class PageListController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());


  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();

    update();
  }
}
