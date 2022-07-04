import '../../config.dart';

class FilterController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  List<CategoryModel> categoryList = [];
  String dropDownVal = "Recommended";

  @override
  void onReady() {
    // TODO: implement onReady
    categoryList = AppArray().categoryList;
    update();
    super.onReady();
  }
}
