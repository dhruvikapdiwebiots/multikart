import '../../config.dart';

class SearchController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  List recentSearchList = [];

  @override
  void onReady() {
    // TODO: implement onReady
    recentSearchList = AppArray().recentSearchList;
    update();
    super.onReady();
  }

}
