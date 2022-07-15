import 'package:get_storage/get_storage.dart';

import '../../config.dart';

class CartController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  final storage = GetStorage();
  List<HomeDealOfTheDayModel> cartList = [];
  List<HomeFindStyleCategoryModel> similarList = [];

  @override
  void onReady() {
    // TODO: implement onReady
    cartList = AppArray().cartList;
    similarList = AppArray().similarProductList;
    update();
    super.onReady();
  }
}
