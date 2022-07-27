import 'package:multikart/config.dart';

var pagesList = <PageListModel>[
  PageListModel(
      title: "OnBoarding".tr,
      desc: "Registration & Splash Screens".tr,
      pageList: [
        PageList(pageName: "OnBoarding".tr,routeName: routeName.onBoarding),
        PageList(pageName: "Login".tr,routeName: routeName.login  ),
        PageList(pageName: "SignUp".tr,routeName: routeName.signUp),
        PageList(pageName: "ForgotPassword".tr,routeName: routeName.forgotPassword),
        PageList(pageName: "resetPassword".tr,routeName: routeName.resetPassword),
        PageList(pageName: "Otp".tr,routeName: routeName.otp),
      ]),
  PageListModel(
      title: "Home&Product".tr,
      desc: "Find Products, Banner, Sale".tr,
      pageList: [
        PageList(pageName: "home".tr,routeName: routeName.dashboard),
        PageList(pageName: "categories".tr,routeName: routeName.dashboard),
        PageList(pageName: "InnerCategories".tr,routeName: routeName.innerCategory),
        PageList(pageName: "Search".tr,routeName: routeName.search),
        PageList(pageName: "Shop".tr,routeName: routeName.shopPage),
        PageList(pageName: "products".tr,routeName: routeName.productDetail),
      ]),
  PageListModel(
      title: "Cart, Order & Payment".tr,
      desc: "Add your Products & Placed Order".tr,
      pageList: [
        PageList(pageName: "cart".tr,routeName: routeName.dashboard),
        PageList(pageName: "EmptyCart".tr,routeName: routeName.emptyCart),
        PageList(pageName: "applyCoupons".tr,routeName: routeName.coupons),
        PageList(pageName: "wishlist".tr,routeName: routeName.dashboard),
        PageList(pageName: "addNewAddress".tr,routeName: routeName.addAddress),
        PageList(pageName: "Payment".tr,routeName: routeName.payment),
        PageList(pageName: "Order Success".tr,routeName: routeName.orderSuccess),
      ]),
  PageListModel(
      title: "profileSetting".tr,
      desc: "Check Order History, tracking pages..".tr,
      pageList: [
        PageList(pageName: "profile".tr,routeName: routeName.dashboard),
        PageList(pageName: "profileSetting".tr,routeName: routeName.profileSetting),
        PageList(pageName: "orderHistory".tr,routeName: routeName.orderHistory),
        PageList(pageName: "Order Track".tr,routeName: routeName.orderDetail),
        PageList(pageName: "No Order".tr,routeName: routeName.emptyHistory)
      ]),
  PageListModel(
      title: "Other Pages".tr,
      desc: "Listing of Other Inner Pages".tr,
      pageList: [
        PageList(pageName: "Term Condition".tr,routeName: routeName.termsCondition),
        PageList(pageName: "Help".tr,routeName: routeName.help),
        PageList(pageName: "aboutUs".tr,routeName: routeName.aboutUs),
        PageList(pageName: "Notification".tr,routeName: routeName.notification)
      ]),
];
