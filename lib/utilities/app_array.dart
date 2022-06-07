import 'package:multikart/config.dart';
import 'package:multikart/models/home_category_model.dart';

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
  var homeCategory = <HomeCategoryModel>[
    HomeCategoryModel(title: 'Women'.tr,image:imageAssets.women ),
    HomeCategoryModel(title: 'Men'.tr,image:imageAssets.men ),
    HomeCategoryModel(title: 'Kids'.tr,image:imageAssets.kids ),
    HomeCategoryModel(title: 'Beauty'.tr,image:imageAssets.beauty ),
    HomeCategoryModel(title: 'Footwear'.tr,image:imageAssets.footwear ),
    HomeCategoryModel(title: 'Jewelery'.tr,image:imageAssets.jewelery ),
  ];

  //home banner list
  var homeBanner = [
    {
      'title': 'Welcome To Multikart'.tr,
      'image': imageAssets.banner1,
      'offer': 'Flat 50% OFF'.tr,
      'subTitle': "Free Shipping Till Mid Night".tr,
      'buttonTitle': 'SHOP NOW'.tr
    },
    {
      'title': 'Welcome To Multikart'.tr,
      'image': imageAssets.banner2,
      'offer': 'Flat 50% OFF'.tr,
      'subTitle': "Free Shipping Till Mid Night".tr,
      'buttonTitle': 'SHOP NOW'.tr
    },
  ];


  //home find style category list
  var homeFindStyleCategory = [
    {
      'title': 'Trending Now'.tr,
    },
    {
      'title': 'Top Picks'.tr,
    },
    {
      'title': 'Featured Products'.tr,
    },
    {
      'title': 'Top Rated'.tr,
    },
    {
      'title': 'Ready To Ship'.tr,
    },
  ];

  //home Deal Of the Day list
  var homeDealOfTheDayList = [
    {
      'name': 'Pink Hoodie t-shirt full'.tr,
      'byWhom': 'by Mango'.tr,
      'image': imageAssets.dealOfTheDay1,
      'mrp': '32.00',
      'totalPrice': "35.00",
      'discount': '20%',
      'isFav': true,
    },
    {
      'name': 'Men Blue Denim Jacket'.tr,
      'byWhom': 'by Zara'.tr,
      'image': imageAssets.dealOfTheDay2,
      'mrp': '32.00',
      'totalPrice': "35.00",
      'discount': '20%',
      'isFav': false,
    },
    {
      'name': 'Men Blue Denim Jacket'.tr,
      'byWhom': 'by H&M'.tr,
      'image': imageAssets.dealOfTheDay3,
      'mrp': '32.00',
      'totalPrice': "35.00",
      'discount': '20%',
      'isFav': false,
    },
  ];

  var drawerList = [
    {
      'title': 'Home'.tr,
      'icon': svgAssets.homeSvg,
      'subTitle': 'Offers, Top Deals, Top Brands'.tr
    },
    {
      'title': 'Shop by Category'.tr,
      'icon': svgAssets.category,
      'subTitle': 'Men, Women, Kids, Beauty..'.tr
    },
    {
      'title': 'Orders'.tr,
      'icon': svgAssets.order,
      'subTitle': 'Ongoing Orders, Recent Orders..'.tr
    },
    {
      'title': 'Your Wishlist'.tr,
      'icon': svgAssets.heart,
      'subTitle': 'Your Save Products'.tr
    },
    {
      'title': 'Your Account'.tr,
      'icon': svgAssets.profile,
      'subTitle': 'Profile, Settings, Saved Cards...'.tr
    },
    {
      'title': 'Language'.tr,
      'icon': svgAssets.flags,
      'subTitle': 'Select your Language here..'.tr
    },
    {
      'title': 'Notification'.tr,
      'icon': svgAssets.notification,
      'subTitle': 'Offers, Order tracking messages..'.tr
    },
    {
      'title': 'Settings'.tr,
      'icon': svgAssets.setting,
      'subTitle': 'App settings, Dark mode'.tr
    },
    {
      'title': 'About us'.tr,
      'icon': svgAssets.aboutUs,
      'subTitle': 'About Multikart'.tr
    },
    {
      'title': 'Help/Customer Care'.tr,
      'icon': svgAssets.call,
      'subTitle': 'Customer Support, FAQs'.tr
    },
  ];
}
