import 'package:get_storage/get_storage.dart';
import 'package:multikart/views/bottom_navigate_page/cart/cart.dart';
import 'package:multikart/views/bottom_navigate_page/category/category.dart';
import 'package:multikart/views/bottom_navigate_page/home/home.dart';
import 'package:multikart/views/bottom_navigate_page/profile/profile.dart';
import 'package:multikart/views/bottom_navigate_page/wishlist/wishlist.dart';

import '../../config.dart';

class AppController extends GetxController {
  AppTheme _appTheme = AppTheme.fromType(ThemeType.light);
  bool isLoading = false;
  int selectedIndex = 0;
  bool isTheme = false;
  bool isRTL = false;
  String languageVal = "en";
  List bottomList = [];
  bool isSearch = true;
  bool isNotification = true;
  bool isCart = true;
  bool isHeart = true;
  bool isShare = false;
  double rightValue = 15;
  final storage = GetStorage();
  AppTheme get appTheme => _appTheme;

//list of bottommost page
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
  getData();
    super.onReady();
  }

  //go to product detail screen
  goToProductDetail(){
    isNotification =false;
    isSearch =false;
    isCart  =true;
    isShare = true;
    isHeart = true;
    update();
    Get.toNamed(routeName.productDetail);
  }

  //go to shop page
  goToShopPage(name){
    isNotification = true;
    update();
    Get.toNamed(routeName.shopPage,arguments: name);
  }

  //go to home screen
  goToHome(){
    isHeart = true;
    isCart = true;
    isShare = false;
    isSearch = true;
    isNotification = true;
    update();
  }


  getData()async{
    String? languageCode = storage.read(Session.languageCode);
    languageVal = storage.read(Session.languageCode) ?? 'en';
    String? countryCode = storage.read(Session.countryCode);

    if (languageCode != null && countryCode != null) {
      var locale = Locale(languageCode, countryCode);
      Get.updateLocale(locale);
    } else {
      Get.updateLocale(Get.deviceLocale ?? const Locale('en', 'US'));
    }
    update();

    //theme check
    bool loadThemeFromStorage = storage.read('isDarkMode') ?? false;
    if (loadThemeFromStorage) {
      isTheme = true;
    } else {
      isTheme = false;
    }

    update();
    await storage.write("isDarkMode", isTheme);
    ThemeService().switchTheme(isTheme);
    Get.forceAppUpdate();

    await storage.read('isDarkMode');
  }

  updateTheme(theme) {
    _appTheme = theme;
    Get.forceAppUpdate();
  }

}
