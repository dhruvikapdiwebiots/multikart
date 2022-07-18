import 'package:get_storage/get_storage.dart';
import '../../config.dart';

class WishlistController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  final storage = GetStorage();
  CartModel? cartModelList;
  List<HomeDealOfTheDayModel> wishlist = [];

  @override
  void onReady() {
    // TODO: implement onReady
    wishlist = AppArray().wishlist;
    update();
    super.onReady();
  }
}
