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
  var homeCategory = [
    {'title': 'Women'.tr, 'image': imageAssets.women},
    {'title': 'Men'.tr, 'image': imageAssets.men},
    {'title': 'Kids'.tr, 'image': imageAssets.kids},
    {'title': 'Beauty'.tr, 'image': imageAssets.beauty},
    {'title': 'Footwear'.tr, 'image': imageAssets.footwear},
    {'title': 'Jewelery'.tr, 'image': imageAssets.jewelery}
  ];

  //home banner list
  var homeBanner = [
    {'title': 'Welcome To Multikart'.tr, 'image': imageAssets.banner1,'offer':'Flat 50% OFF','subTitle':"Free Shipping Till Mid Night",'buttonTitle':'SHOP NOW'},
    {'title': 'Welcome To Multikart'.tr, 'image': imageAssets.banner2,'offer':'Flat 50% OFF','subTitle':"Free Shipping Till Mid Night",'buttonTitle':'SHOP NOW'},

  ];

  var drawerList = [
    {
      'title': 'Home',
      'icon': svgAssets.homeSvg,
      'subTitle': 'Offers, Top Deals, Top Brands'
    },{
      'title': 'Shop by Category',
      'icon': svgAssets.category,
      'subTitle': 'Men, Women, Kids, Beauty..'
    },{
      'title': 'Orders',
      'icon': svgAssets.order,
      'subTitle': 'Ongoing Orders, Recent Orders..'
    },{
      'title': 'Your Wishlist',
      'icon': svgAssets.heart,
      'subTitle': 'Your Save Products'
    },{
      'title': 'Your Account',
      'icon': svgAssets.profile,
      'subTitle': 'Profile, Settings, Saved Cards...'
    },{
      'title': 'Language',
      'icon': svgAssets.flags,
      'subTitle': 'Select your Language here..'
    },{
      'title': 'Notification',
      'icon': svgAssets.notification,
      'subTitle': 'Offers, Order tracking messages..'
    },{
      'title': 'Settings',
      'icon': svgAssets.setting,
      'subTitle': 'App settings, Dark mode'
    },{
      'title': 'About us',
      'icon': svgAssets.aboutUs,
      'subTitle': 'About Multikart'
    },{
      'title': 'Help/Customer Care',
      'icon': svgAssets.call,
      'subTitle': 'Customer Support, FAQs'
    },
  ];
}
