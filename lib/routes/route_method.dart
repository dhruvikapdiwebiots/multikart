import 'package:get/get.dart';


//app file
import 'route_name.dart';
import 'screen_list.dart';

RouteName _routeName = RouteName();

class AppRoute {
  final List<GetPage> getPages = [
    GetPage(name: _routeName.changeTheme, page: () => ChangeTheme()),
    GetPage(name: _routeName.home, page: () => const Index()),
    GetPage(name: _routeName.onBoarding, page: () => const OnBoardingScreen()),
    GetPage(name: _routeName.login, page: () => LoginScreen()),
    GetPage(name: _routeName.signUp, page: () => SignUpScreen()),
    GetPage(name: _routeName.forgotPassword, page: () => ForgotPassWordScreen()),
  ];
}
