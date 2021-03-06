import 'package:get/get.dart';

//app file
import 'route_name.dart';
import 'screen_list.dart';

RouteName _routeName = RouteName();

class AppRoute {
  final List<GetPage> getPages = [
    GetPage(name: _routeName.onBoarding, page: () => const OnBoardingScreen()),
    GetPage(name: _routeName.login, page: () => LoginScreen()),
    GetPage(name: _routeName.signUp, page: () => SignUpScreen()),
    GetPage(
        name: _routeName.forgotPassword, page: () => ForgotPassWordScreen()),
    GetPage(name: _routeName.resetPassword, page: () => ResetPassword()),
    GetPage(name: _routeName.dashboard, page: () => const Dashboard()),
    GetPage(name: _routeName.innerCategory, page: () => const InnerCategory()),
    GetPage(name: _routeName.shopPage, page: () => ShopPage()),
    GetPage(name: _routeName.search, page: () => Search()),
    GetPage(name: _routeName.productDetail, page: () => ProductDetail()),
    GetPage(name: _routeName.coupons, page: () => Coupons()),
    GetPage(name: _routeName.deliveryDetail, page: () => DeliveryDetail()),
    GetPage(name: _routeName.addAddress, page: () => AddAddress()),
    GetPage(name: _routeName.payment, page: () => Payment()),
    GetPage(name: _routeName.orderSuccess, page: () => OrderSuccess()),
    GetPage(name: _routeName.cardBalance, page: () => CardBalance()),
    GetPage(name: _routeName.profileSetting, page: () => ProfileSetting()),
    GetPage(name: _routeName.profileSetting, page: () => ProfileSetting()),
    GetPage(name: _routeName.orderHistory, page: () => OrderHistory()),
    GetPage(name: _routeName.orderDetail, page: () => OrderDetail()),
  ];
}
