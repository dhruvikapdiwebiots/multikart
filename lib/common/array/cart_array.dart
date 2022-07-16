import 'package:multikart/models/cart_model.dart';

import '../../config.dart';

var cartList = CartModel(
    cartList: [
      HomeDealOfTheDayModel(
          name: "Pink Hoodie t-shirt full".tr,
          image: imageAssets.product16,
          byWhom: "by Mango".tr,
          discount: "20%",
          isFav: true,
          mrp: 32.00,
          totalPrice: 35.00,
          isTrending: true),
      HomeDealOfTheDayModel(
          name: "Pink Hoodie t-shirt full".tr,
          image: imageAssets.product16,
          byWhom: "by Mango".tr,
          discount: "20%",
          isFav: true,
          mrp: 32.00,
          totalPrice: 35.00,
          isTrending: false),
      HomeDealOfTheDayModel(
          name: "Pink Hoodie t-shirt full".tr,
          image: imageAssets.product16,
          byWhom: "by Mango".tr,
          discount: "20%",
          isFav: true,
          mrp: 32.00,
          totalPrice: 35.00,
          isTrending: false),
    ],
    totalAmount: 270.00,
    deliveryChargesInstruction: [
      DeliveryChargesInstruction(
          title: "No Delivery Charges applied on this order",
          icon: gifAssets.truckDelivery)
    ],
    deliveryInstruction: [
      DeliveryInstructionModel(title: "7 Day Return", icon: svgAssets.returning),
      DeliveryInstructionModel(title: "24/7 Support", icon: svgAssets.support),
      DeliveryInstructionModel(title: "Secure Payment", icon: svgAssets.wallet),
    ],
    orderDetail: [
      OrderDetail(title: "Bag total", value: 220.00),
      OrderDetail(title: "Bag savings", value: 20.00),
      OrderDetail(title: "Coupon Discount", value: "Apply Coupon"),
      OrderDetail(title: "Delivery", value: 50.00),
    ]);
