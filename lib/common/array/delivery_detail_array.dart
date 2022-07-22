import 'package:multikart/config.dart';

var deliveryDetailArray = DeliveryDetailModel(addressList: [
  AddressList(
      name: "Carolina S Seo".tr,
      address: "3501  Maloy Court, ".tr,
      addressType: "HOME".toUpperCase().tr,
      city: "NY".tr,
      locality: "East Elmhurst, ".tr,
      phone: "903-239-1284",
      pinCode: "11369",
      state: "New York City".tr),
  AddressList(
      name: "Arthur M Willingham".tr,
      address: "3059  Elk City Road".tr,
      addressType: "OFFICE".tr,
      city: "IN".tr,
      locality: "Indianapolis, ".tr,
      phone: "317-898-0622",
      pinCode: "46229",
      state: "Indiana".tr),
], expectedDelivery: [
  ExpectedDelivery(
      name: "Pink Hoodie t-shirt full".tr,
      image: imageAssets.product14,
      date: "25th July"),
  ExpectedDelivery(
      name: "Pink Hoodie t-shirt full".tr,
      image: imageAssets.product15,
      date: "25th July"),
]);
