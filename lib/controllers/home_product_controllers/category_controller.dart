import '../../config.dart';

class CategoryController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  List<CategoryModel> categoryList = [];

  @override
  void onReady() {
    // TODO: implement onReady
    categoryList = AppArray().categoryList;
    update();
    super.onReady();
  }
}
