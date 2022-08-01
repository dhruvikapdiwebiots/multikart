import '../../config.dart';

class CategoryController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  List<CategoryModel> categoryList = [];

  @override
  void onReady() {
    // TODO: implement onReady
    getData();
    super.onReady();
  }

  getData()async{
    appCtrl.isShimmer = true;
    appCtrl.update();
    categoryList = AppArray().categoryList;

    update();
    await Future.delayed(Durations.s3);
    appCtrl.isShimmer = false;
    appCtrl.update();
    update();
  }
}
