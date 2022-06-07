import 'package:get_storage/get_storage.dart';
import 'package:multikart/models/home_category_model.dart';

import '../../config.dart';

class HomeController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  final storage = GetStorage();
  List<HomeCategoryModel> homeCategoryList = [];
  List bannerList = [];
  List dealOfTheDayList = [];
  List findStyleCategory = [];
  int current = 0;
  int selectedStyleCategory =0;
  final CarouselController controller = CarouselController();

  @override
  void onReady() async {
    homeCategoryList = AppArray().homeCategory;

    bannerList = AppArray().homeBanner;
    dealOfTheDayList = AppArray().homeDealOfTheDayList;
    findStyleCategory = AppArray().homeFindStyleCategory;
    update();

    super.onReady();
  }

  //add to wishlist
  Future<bool?> addToWishList(index, val)async {
    print('val : $val');
    dealOfTheDayList[index]['isFav'] = !val;
    update();
    return dealOfTheDayList[index]['isFav'];
  }
}
