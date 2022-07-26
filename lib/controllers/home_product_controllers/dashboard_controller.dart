import 'package:get_storage/get_storage.dart';
import 'package:multikart/controllers/home_product_controllers/drawer_controller.dart';

import '../../config.dart';

class DashboardController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());
  AnimationController? drawerSlideController;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final drawerCtrl = Get.isRegistered<DrawerPageController>()
      ? Get.find<DrawerPageController>()
      : Get.put(DrawerPageController());

  List drawerList = [];
  final storage = GetStorage();

  @override
  void onReady() async {
    drawerList = AppArray().drawerList;
    update();
    super.onReady();
  }

  //bottom change
  bottomNavigationChange(val, context) async {
    appCtrl.selectedIndex = val;
    appCtrl.isLoading = true;
    appCtrl.update();

    await storage.write(Session.selectedIndex, val);

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
    appCtrl.isLoading = false;
    appCtrl.update();
    update();
  }

  //app bar leading action
  appBarLeadingAction() async {

    if (appCtrl.selectedIndex == 0) {
      scaffoldKey.currentState!.openDrawer();
    } else {
      appCtrl.goToHome();
      await storage.write(Session.selectedIndex, 0);
      appCtrl.selectedIndex = 0;
      update();
    }
  }

}
