import 'package:get_storage/get_storage.dart';

import '../../config.dart';

class DashboardController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  final storage = GetStorage();

  //bottom change
  bottomNavigationChange(val,context) async {
    await storage.write('selectedIndex', val);
    appCtrl.selectedIndex = val;
    appCtrl.rightValue = MediaQuery.of(context).size.width;
    if (appCtrl.selectedIndex == 0) {
      appCtrl.isHeart = true;
      appCtrl.isCart = true;
      appCtrl.isShare = false;
      appCtrl.isSearch = true;
      appCtrl.isNotification = true;
    } else if (appCtrl.selectedIndex == 1) {
      appCtrl.isHeart = true;
      appCtrl.isCart = true;
      appCtrl.isShare = false;
      appCtrl.isSearch = false;
      appCtrl.isNotification = false;
    } else if (appCtrl.selectedIndex == 2) {
      appCtrl.isHeart = true;
      appCtrl.isCart = false;
      appCtrl.isShare = false;
      appCtrl.isSearch = false;
      appCtrl.isNotification = false;
    } else if (appCtrl.selectedIndex == 3) {
      appCtrl.isHeart = false;
      appCtrl.isCart = true;
      appCtrl.isShare = false;
      appCtrl.isSearch = false;
      appCtrl.isNotification = false;
    } else if (appCtrl.selectedIndex == 4) {
      appCtrl.isHeart = false;
      appCtrl.isCart = false;
      appCtrl.isShare = false;
      appCtrl.isSearch = false;
      appCtrl.isNotification = false;
    }
    appCtrl.update();
    update();
  }
}
