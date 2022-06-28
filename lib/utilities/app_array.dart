import 'package:multikart/config.dart';
import 'package:multikart/models/home_banner_model.dart';
import 'package:multikart/models/home_category_model.dart';
import 'package:multikart/models/home_find_style.dart';
import 'package:multikart/models/home_find_style_category.dart';
import 'package:multikart/models/onboarding_model.dart';

class AppArray {
  var onBoardingList = <OnBoardingModel>[
    OnBoardingModel(
        title: 'Welcome to Biggest Online Store'.tr,
        image: imageAssets.onBoarding1,
        description: "onBoard1".tr),
    OnBoardingModel(
        title: 'Perfect Pair for Everyone'.tr,
        image: imageAssets.onBoarding2,
        description: "onBoard2".tr),
    OnBoardingModel(
        title: 'Find all New Favourites'.tr,
        image: imageAssets.onBoarding3,
        description: "onBoard3".tr),
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
    HomeCategoryModel(title: 'Women'.tr, image: imageAssets.women),
    HomeCategoryModel(title: 'Men'.tr, image: imageAssets.men),
    HomeCategoryModel(title: 'Kids'.tr, image: imageAssets.kids),
    HomeCategoryModel(title: 'Beauty'.tr, image: imageAssets.beauty),
    HomeCategoryModel(title: 'Footwear'.tr, image: imageAssets.footwear),
    HomeCategoryModel(title: 'Jewelery'.tr, image: imageAssets.jewelery),
  ];

  //home banner list
  var homeBanner = <HomeBannerModel>[
    HomeBannerModel(
      title: 'Welcome To Multikart'.tr,
      image: imageAssets.banner1,
      buttonTitle: 'SHOP NOW'.tr,
      offers: 'Flat 50% OFF'.tr,
      subTitle: "Free Shipping Till Mid Night".tr,
    ),
    HomeBannerModel(
      title: 'Welcome To Multikart'.tr,
      image: imageAssets.banner2,
      buttonTitle: 'SHOP NOW'.tr,
      offers: 'Flat 50% OFF'.tr,
      subTitle: "Free Shipping Till Mid Night".tr,
    ),
  ];

  //home find style category list
  var homeFindStyleCategory = [
    {
      'id': 1,
      'title': 'Trending Now'.tr,
    },
    {
      'id': 2,
      'title': 'Top Picks'.tr,
    },
    {
      'id': 3,
      'title': 'Featured Products'.tr,
    },
    {
      'id': 4,
      'title': 'Top Rated'.tr,
    },
    {
      'id': 5,
      'title': 'Ready To Ship'.tr,
    },
  ];

  //home Deal Of the Day list
  var homeDealOfTheDayList = <HomeDealOfTheDayModel>[
    HomeDealOfTheDayModel(
      name: 'Pink Hoodie t-shirt full'.tr,
      image: imageAssets.dealOfTheDay1,
      byWhom: 'by Mango'.tr,
      discount: '20%',
      isFav: true,
      mrp: '32.00',
      totalPrice: "35.00",
    ),
    HomeDealOfTheDayModel(
      name: 'Men Blue Denim Jacket'.tr,
      image: imageAssets.dealOfTheDay2,
      byWhom: 'by Zara'.tr,
      discount: '20%',
      isFav: false,
      mrp: '32.00',
      totalPrice: "35.00",
    ),
    HomeDealOfTheDayModel(
      name: 'Men Blue Denim Jacket'.tr,
      image: imageAssets.dealOfTheDay3,
      byWhom: 'by H&M'.tr,
      discount: '20%',
      isFav: false,
      mrp: '32.00',
      totalPrice: "35.00",
    )
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

  //home find style category list
  var


  homeFindStyleCategoryList = <HomeFindStyleCategoryModel>[
    HomeFindStyleCategoryModel(
      name: 'Blue Denim Jacket'.tr,
      image: imageAssets.findStyle1,
      categoryId: '1',
      discount: '20%',
      isFav: false,
      mrp: '32.00',
      totalPrice: "35.00",
      rating: 0.5
    ),
    HomeFindStyleCategoryModel(
      name: 'Blue Denim Jacket'.tr,
      image: imageAssets.findStyle2,
      categoryId: '1',
      discount: '20%',
      isFav: false,
      mrp: '32.00',
      totalPrice: "35.00",
      rating: 3
    ),
    HomeFindStyleCategoryModel(
      name: 'Blue Denim Jacket'.tr,
      image: imageAssets.findStyle3,
      categoryId: '1',
      discount: '20%',
      isFav: false,
      mrp: '32.00',
      totalPrice: "35.00",
      rating: 1.2
    ),
    HomeFindStyleCategoryModel(
      name: 'Blue Denim Jacket'.tr,
      image: imageAssets.findStyle4,
      categoryId: '1',
      discount: '20%',
      isFav: false,
      mrp: '32.00',
      totalPrice: "35.00",
      rating: 4
    ),
    HomeFindStyleCategoryModel(
      name: 'Blue Denim Jacket'.tr,
      image: imageAssets.findStyle2,
      categoryId: '2',
      discount: '20%',
      isFav: false,
      mrp: '32.00',
      totalPrice: "35.00",
      rating: 3
    ),
    HomeFindStyleCategoryModel(
      name: 'Blue Denim Jacket'.tr,
      image: imageAssets.findStyle4,
      categoryId: '2',
      discount: '20%',
      isFav: false,
      mrp: '32.00',
      totalPrice: "35.00",
      rating: 4
    ),
    HomeFindStyleCategoryModel(
      name: 'Blue Denim Jacket'.tr,
      image: imageAssets.findStyle3,
      categoryId: '3',
      discount: '20%',
      isFav: false,
      mrp: '32.00',
      totalPrice: "35.00",
      rating: 2
    )

  ];
}
