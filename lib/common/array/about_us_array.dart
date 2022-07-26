import 'package:multikart/config.dart';

var aboutUs = AboutUsModel(
    title:
        "Multikart is premier fashion destination for the latest trends and hottest styles."
            .tr,
    desc1: "helpListDec".tr,
    desc2: "aboutDesc".tr,
    desc3: "aboutDesc".tr,
    ourBrand: "ourBrand".tr,
    statistic: [
      Statistic(
        count: 150,
          title: "+ users".tr,
          image: svgAssets.users,
          desc: "Multikart have 150+ register users online store".tr),
      Statistic(
          count: 50,
          title: "+ stores".tr,
          image: svgAssets.shop,
          desc: "Multikart have 50+ stores worldwide.".tr),
      Statistic(
          count: 1.5,
          title: "M+ orders".tr,
          image: svgAssets.delivery,
          desc: "Multikart has 1.5M+ total orders till now. ".tr),
      Statistic(
          count: 100,
          title: "+ Brands".tr,
          image: svgAssets.diamond,
          desc: "Multikart has 100+ brands in our stores.".tr),
    ]);
