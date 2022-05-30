import 'package:multikart/common/theme/index.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  AppTheme _appTheme = AppTheme.fromType(ThemeType.light);
  bool _isLoading = false;

  AppTheme get appTheme => _appTheme;
  bool get isLoading => _isLoading;




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
