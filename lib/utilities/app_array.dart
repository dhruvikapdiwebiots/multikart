import 'package:multikart/config.dart';

class AppArray {
  var onBoardingList = [
    {
      'image': imageAssets.onBoarding1,
      'title': 'Welcome to Biggest Online Store',
      'description': "onBoard1"
    },
    {
      'image': imageAssets.onBoarding2,
      'title': 'Perfect Pair for Everyone',
      'description': 'onBoard2'
    },
    {
      'image': imageAssets.onBoarding3,
      'title': 'Find all New Favourites',
      'description': 'onBoard3'
    },
  ];

  var bottomSheet = [
    {
      'title': 'home'.tr,
      'selectedIcon': svgAssets.homeColor,
      'unSelectedIcon': svgAssets.homeSvg
    },
    {
      'title': 'category'.tr,
      'selectedIcon': svgAssets.categoryColor,
      'unSelectedIcon': svgAssets.category
    },
    {
      'title': 'cart'.tr,
      'selectedIcon': svgAssets.buyColor,
      'unSelectedIcon': svgAssets.buy
    },
    {
      'title': 'wishlist'.tr,
      'selectedIcon': svgAssets.heartColor,
      'unSelectedIcon': svgAssets.heart
    },
    {
      'title': 'profile'.tr,
      'selectedIcon': svgAssets.profileColor,
      'unSelectedIcon': svgAssets.profile
    }
  ];

  //home category list
  var homeCategory = [{
    'title':'Women'.tr,
    'image': imageAssets.women
  },{
    'title':'Men'.tr,
    'image': imageAssets.men
  },{
    'title':'Kids'.tr,
    'image': imageAssets.kids
  },{
    'title':'Beauty'.tr,
    'image': imageAssets.beauty
  },{
    'title':'Footwear'.tr,
    'image': imageAssets.footwear
  },{
    'title':'Jewelery'.tr,
    'image': imageAssets.jewelery
  }];
}
