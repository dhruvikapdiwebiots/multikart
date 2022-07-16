import 'package:get_storage/get_storage.dart';
import 'package:multikart/models/cart_model.dart';
import '../../config.dart';

class CartController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  final storage = GetStorage();
  CartModel? cartModelList;
  List<HomeFindStyleCategoryModel> similarList = [];

  @override
  void onReady() {
    // TODO: implement onReady
    cartModelList = cartList;
    similarList = AppArray().similarProductList;
    update();
    super.onReady();
  }
}
