import 'package:multikart/views/home_and_product/cart/cart.dart';
import 'package:multikart/views/home_and_product/category/category.dart';
import 'package:multikart/views/home_and_product/home/home.dart';
import 'package:multikart/views/home_and_product/profile/profile.dart';
import 'package:multikart/views/home_and_product/wishlist/wishlist.dart';

import '../../config.dart';

class AppController extends GetxController {
  AppTheme _appTheme = AppTheme.fromType(ThemeType.light);
  bool _isLoading = false;
  int selectedIndex = 0;
  List bottomList = [];
  bool isSearch = true;
  bool isNotification = true;
  bool isCart = true;
  bool isHeart = true;
  bool isShare = false;
  double rightValue = 15;
  AppTheme get appTheme => _appTheme;
  bool get isLoading => _isLoading;

//list of bottomnavigator page
  List<Widget> widgetOptions = <Widget>[
    const HomeScreen(),
    const CategoryScreen(),
    const CartScreen(),
    const WishlistScreen(),
    const ProfileScreen()
  ];

  @override
  void onReady() async {
    bottomList = AppArray().bottomSheet;

    super.onReady();
  }

  updateTheme(theme) {
    _appTheme = theme;
    Get.forceAppUpdate();
  }

  void showLoading() {
    _isLoading = true;
    update();
  }

  void hideLoading() {
    _isLoading = false;
    update();
  }
}
