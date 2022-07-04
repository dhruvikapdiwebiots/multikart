import 'package:multikart/config.dart';
import 'package:multikart/models/onboarding_model.dart';

class AppArray {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());
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
    {'title': 'Mode'.tr, 'icon': svgAssets.setting, 'subTitle': ''},
    {'title': 'RTL'.tr, 'icon': svgAssets.setting, 'subTitle': ''},
    {
      'title': 'Pages'.tr,
      'icon': svgAssets.order,
      'subTitle': 'Elements & Other Pages'.tr
    },
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
  var homeFindStyleCategoryList = <HomeFindStyleCategoryModel>[
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.findStyle1,
        categoryId: '1',
        discount: '20%',
        isFav: false,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 0.5),
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.findStyle2,
        categoryId: '1',
        discount: '20%',
        isFav: false,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 3),
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.findStyle3,
        categoryId: '1',
        discount: '20%',
        isFav: false,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 1.2),
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.findStyle4,
        categoryId: '1',
        discount: '20%',
        isFav: false,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 4),
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.findStyle2,
        categoryId: '2',
        discount: '20%',
        isFav: false,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 3),
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.findStyle4,
        categoryId: '2',
        discount: '20%',
        isFav: false,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 4),
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.findStyle3,
        categoryId: '3',
        discount: '20%',
        isFav: false,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 2)
  ];

  //biggest deal brand
  var biggestDealBrandList = [
    {
      "image": imageAssets.biggestDeal1,
    },
    {
      "image": imageAssets.biggestDeal2,
    },
    {
      "image": imageAssets.biggestDeal3,
    },
    {
      "image": imageAssets.biggestDeal4,
    },
    {
      "image": imageAssets.biggestDeal5,
    }
  ];

  //inner category biggest deal brand
  var innerCategoryBrandList = [
    {
      "image": imageAssets.biggestDeal6,
    },
    {
      "image": imageAssets.biggestDeal7,
    },
    {
      "image": imageAssets.biggestDeal8,
    },
    {
      "image": imageAssets.biggestDeal1,
    },
    {
      "image": imageAssets.biggestDeal2,
    },
    {
      "image": imageAssets.biggestDeal9,
    }
  ];

  //offer corner
  var offerCornerList = [
    {
      'id': 1,
      'title': 'UNDER \$50.00'.tr,
    },
    {
      'id': 2,
      'title': 'Flat \$20 OFF'.tr,
    },
    {
      'id': 3,
      'title': 'buy 1 get 1'.tr,
    },
    {
      'id': 4,
      'title': 'upto 50% off'.tr,
    }
  ];

  //home kids corner list
  var homeKidsCornerList = <HomeFindStyleCategoryModel>[
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.kidsCorner1,
        categoryId: '1',
        discount: '20%',
        isFav: false,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 0.5),
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.kidsCorner2,
        categoryId: '1',
        discount: '20%',
        isFav: false,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 3),
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.kidsCorner3,
        categoryId: '1',
        discount: '20%',
        isFav: false,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 1.2),
  ];

  //category list
  var categoryList = <CategoryModel>[
    CategoryModel(
        title: "Sale".tr,
        image: imageAssets.category1,
        description: "upto 50% off on all products".tr,
        bgColor: const Color(0xFFEDEFF4)),
    CategoryModel(
        title: "Women".tr,
        image: imageAssets.category2,
        description: "t-shirts, tops,  bottoms..".tr,
        bgColor: const Color(0xFFDEDEDE)),
    CategoryModel(
        title: "Men".tr,
        image: imageAssets.category3,
        description: "jackets, jeans, denims..".tr,
        bgColor: const Color(0xFFEDEFF4)),
    CategoryModel(
        title: "Kids".tr,
        image: imageAssets.category4,
        description: "clothing, toys, books..".tr,
        bgColor: const Color(0xFFD6CBC9)),
    CategoryModel(
        title: "Beauty".tr,
        image: imageAssets.category5,
        description: "skincare, haircare, makeup..".tr,
        bgColor: const Color(0xFFEDEFF4)),
    CategoryModel(
        title: "Footwear".tr,
        image: imageAssets.category6,
        description: "shoes, sandal, activewear..".tr,
        bgColor: const Color(0xFFA8A9AB).withOpacity(.5)),
    CategoryModel(
        title: "Jewellery".tr,
        image: imageAssets.category7,
        description: "necklace, chains, earrings..".tr,
        bgColor: const Color(0xFFEDEFF4)),
  ];

  //inner category
  var innerCategoryList = [
    {
      "id": 1,
      "name": "Fusion Wear".tr,
      'child': [
        {"id": 1, "name": "Maxi Dresses".tr},
        {"id": 2, "name": "Skirts".tr},
        {"id": 3, "name": "Crop Tops".tr},
        {"id": 4, "name": "Tunics".tr},
        {"id": 5, "name": "Halter Tops".tr},
        {"id": 6, "name": "Spaghetti Kurtas".tr},
        {"id": 7, "name": "Capes".tr},
        {"id": 8, "name": "Fusion Gowns".tr},
        {"id": 9, "name": "Nightwear".tr},
        {"id": 10, "name": "Handbags".tr},
      ]
    },
    {
      "id": 2,
      "name": "Western Wear".tr,
      'child': [
        {"id": 1, "name": "Maxi Dresses".tr},
        {"id": 2, "name": "Skirts".tr},
        {"id": 3, "name": "Crop Tops".tr},
        {"id": 4, "name": "Tunics".tr},
        {"id": 5, "name": "Halter Tops".tr},
      ]
    },
    {
      "id": 3,
      "name": "Lingerie & Sleepwear".tr,
      'child': [
        {"id": 1, "name": "Maxi Dresses".tr},
        {"id": 2, "name": "Skirts".tr},
        {"id": 3, "name": "Crop Tops".tr},
      ]
    },
    {
      "id": 4,
      "name": "Footwear".tr,
      'child': [
        {"id": 1, "name": "Maxi Dresses".tr},
        {"id": 2, "name": "Skirts".tr},
        {"id": 3, "name": "Crop Tops".tr},
        {"id": 4, "name": "Tunics".tr},
        {"id": 5, "name": "Halter Tops".tr},
        {"id": 6, "name": "Spaghetti Kurtas".tr},
      ]
    },
    {
      "id": 5,
      "name": "Sports & Active Wear".tr,
      'child': [
        {"id": 1, "name": "Maxi Dresses".tr},
        {"id": 2, "name": "Skirts".tr},
        {"id": 3, "name": "Crop Tops".tr},
        {"id": 4, "name": "Tunics".tr},
        {"id": 5, "name": "Halter Tops".tr},
        {"id": 6, "name": "Spaghetti Kurtas".tr},
        {"id": 7, "name": "Capes".tr},
        {"id": 8, "name": "Fusion Gowns".tr},
      ]
    },
    {
      "id": 6,
      "name": "Beauty & Personal Care".tr,
      'child': [
        {"id": 1, "name": "Maxi Dresses".tr},
        {"id": 2, "name": "Skirts".tr},
        {"id": 3, "name": "Crop Tops".tr},
        {"id": 4, "name": "Tunics".tr},
      ]
    },
    {
      "id": 7,
      "name": "Jewellery".tr,
      'child': [
        {"id": 1, "name": "Maxi Dresses".tr},
        {"id": 2, "name": "Skirts".tr},
        {"id": 3, "name": "Crop Tops".tr},
        {"id": 8, "name": "Fusion Gowns".tr},
        {"id": 9, "name": "Nightwear".tr},
        {"id": 10, "name": "Handbags".tr},
      ]
    },
    {
      "id": 8,
      "name": "Gadgets".tr,
      'child': [
        {"id": 1, "name": "Maxi Dresses".tr},
        {"id": 2, "name": "Skirts".tr},
        {"id": 3, "name": "Crop Tops".tr},
        {"id": 4, "name": "Tunics".tr},
        {"id": 5, "name": "Halter Tops".tr},
        {"id": 9, "name": "Nightwear".tr},
        {"id": 10, "name": "Handbags".tr},
      ]
    },
    {
      "id": 9,
      "name": "Plus Size".tr,
      'child': [
        {"id": 1, "name": "Maxi Dresses".tr},
        {"id": 2, "name": "Skirts".tr},
        {"id": 3, "name": "Crop Tops".tr},
        {"id": 8, "name": "Fusion Gowns".tr},
        {"id": 9, "name": "Nightwear".tr},
        {"id": 10, "name": "Handbags".tr},
      ]
    }
  ];

  //inner category list
  var innerCategoryProduct = [
    {"image": imageAssets.flowerPrint, 'title': "Flowerprint".tr},
    {"image": imageAssets.denim, 'title': "Denim".tr},
    {"image": imageAssets.skirts, 'title': "Skirts".tr},
  ];


  //home shop page list
  var homeShopPageList = <HomeFindStyleCategoryModel>[
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.findStyle3,
        categoryId: '1',
        discount: '20%',
        isFav: false,
        isNew: true,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 1.2),
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.findStyle4,
        categoryId: '1',
        discount: '20%',
        isFav: false,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 4),
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.findStyle1,
        categoryId: '1',
        discount: '20%',
        isFav: false,
        isNew: false,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 0.5),
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.findStyle2,
        categoryId: '1',
        discount: '20%',
        isFav: false,
        isNew: true,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 3),

    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.kidsCorner1,
        categoryId: '2',
        discount: '20%',
        isFav: false,
        isNew: false,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 3),
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.findStyle5,
        categoryId: '2',
        discount: '20%',
        isFav: false,
        isNew: false,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 4),
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.kidsCorner2,
        categoryId: '3',
        discount: '20%',
        isFav: false,
        isNew: false,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 2),
    HomeFindStyleCategoryModel(
        name: 'Blue Denim Jacket'.tr,
        image: imageAssets.kidsCorner3,
        categoryId: '3',
        discount: '20%',
        isFav: false,
        isNew: false,
        mrp: '32.00',
        totalPrice: "35.00",
        rating: 2)
  ];
}
