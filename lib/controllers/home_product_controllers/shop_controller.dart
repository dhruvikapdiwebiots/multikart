import 'package:get_storage/get_storage.dart';
import 'package:multikart/views/bottom_navigate_page/filter/filter.dart';

import '../../config.dart';

class ShopController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());
  TextEditingController controller = TextEditingController();
  List<HomeFindStyleCategoryModel> homeShopPageList = [];
  List<CategoryModel> categoryList = [];
  CategoryModel? categoryModel;
  final dashboardCtrl = Get.isRegistered<DashboardController>()
      ? Get.find<DashboardController>()
      : Get.put(DashboardController());
  String name = "";
  final storage = GetStorage();

  @override
  void onReady() {
    // TODO: implement onReady
    name = Get.arguments;
    categoryList = AppArray().categoryList;
    homeShopPageList = AppArray().homeShopPageList;
    update();
    super.onReady();
  }

  Route createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Filter(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  //bottom change
  bottomNavigationChange(val, context) async {
    Get.back();
    Get.back();
    dashboardCtrl.bottomNavigationChange(val, context);
  }
}
