import 'package:get_storage/get_storage.dart';

import '../../config.dart';

class HomeController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  final storage = GetStorage();
  List homeCategoryList = [];
  List bannerList = [];

  @override
  void onReady() async {
    homeCategoryList = AppArray().homeCategory;
    bannerList = AppArray().homeBanner;
    update();

    super.onReady();
  }
}
