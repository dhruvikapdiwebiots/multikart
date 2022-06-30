import 'package:get_storage/get_storage.dart';
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
  getData();
    super.onReady();
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
    bool _loadThemeFromStorage = storage.read('isDarkMode') ?? false;
    if (_loadThemeFromStorage) {
      isTheme = true;
    } else {
      isTheme = false;
    }

    print("isTheme : $isTheme");

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

  void showLoading() {
    _isLoading = true;
    update();
  }

  void hideLoading() {
    _isLoading = false;
    update();
  }
}
