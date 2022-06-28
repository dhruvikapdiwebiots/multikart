import 'package:get_storage/get_storage.dart';
import 'package:multikart/models/home_banner_model.dart';
import 'package:multikart/models/home_category_model.dart';
import 'package:multikart/models/home_find_style.dart';
import 'package:multikart/models/home_find_style_category.dart';

import '../../config.dart';

class HomeController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  final storage = GetStorage();
  double loginWidth = 40.0;
  double loginHeight = 40.0;
  List<HomeCategoryModel> homeCategoryList = [];
  List<HomeBannerModel> bannerList = [];
  List<HomeDealOfTheDayModel> dealOfTheDayList = [];
  List findStyleCategory = [];
  List<HomeFindStyleCategoryModel> findStyleCategoryList = [];
  List<HomeFindStyleCategoryModel> findStyleCategoryCategoryWiseList = [];
  int current = 0;
  int selectedStyleCategory = 0;
  final CarouselController controller = CarouselController();
  bool selected = false;
  int hours = 00;
  int minutes = 00;
  int secs = 00;
  DateTime dt1 = DateTime.now();
  DateTime dt2 = DateTime.now();

  @override
  void onReady() async {
    homeCategoryList = AppArray().homeCategory;
    bannerList = AppArray().homeBanner;
    dealOfTheDayList = AppArray().homeDealOfTheDayList;
    findStyleCategory = AppArray().homeFindStyleCategory;
    findStyleCategoryList = AppArray().homeFindStyleCategoryList;
    loginWidth = ScreenUtil().screenWidth;
    loginHeight = 500.w;
    update();
    subCategoryList(0, 1);
    print(dt1.hour);
    print(dt1.hour + 4);
    dt2 = DateTime.utc(dt1.year, dt1.month, dt1.day +1, dt1.hour + 4, dt1.minute,
        dt1.second, dt1.millisecond, dt1.microsecond);
    print(dt2);
    update();
    Duration diff = dt2.difference(dt1);
    hours = diff.inHours;
    minutes = diff.inMinutes;
    secs = diff.inSeconds;

    print(hours);
    update();
    super.onReady();
  }

  //add to wishlist
  Future<bool?> addToWishList(index, val) async {
    dealOfTheDayList[index].isFav = !val;
    update();
    return dealOfTheDayList[index].isFav;
  }

  subCategoryList(index, categoryId) async {
    loginWidth = 40.0;
    loginHeight = 40.0;

    update();
    await Future.delayed(Durations.s1);
    print(loginHeight);
    selected = !selected;
    findStyleCategoryCategoryWiseList = [];
    selectedStyleCategory = index;

    update();
    for (var i = 0; i < findStyleCategoryList.length; i++) {
      if (categoryId.toString() ==
          findStyleCategoryList[i].categoryId.toString()) {
        findStyleCategoryCategoryWiseList.add(findStyleCategoryList[i]);
      }
    }
    loginWidth = ScreenUtil().screenWidth;
    loginHeight = 500.w;
    update();
  }
}
