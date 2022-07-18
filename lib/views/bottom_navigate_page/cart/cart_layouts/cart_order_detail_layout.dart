import 'package:multikart/config.dart';

class CartOrderDetailLayout extends StatelessWidget {
  const CartOrderDetailLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(builder: (cartCtrl) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ...cartCtrl.cartModelList!.orderDetail!.map((e) {
          String val;
          if ((e.title == "Bag savings")) {
            val = "-\$${e.value}";
          } else if ((e.value == "Apply Coupon")) {
            val = e.value;
          } else {
            val = "\$${e.value}";
          }
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LatoFontStyle(
                  text: e.title,
                  fontSize: CommonTextFontSize.f14,
                  color: cartCtrl.appCtrl.appTheme.contentColor),
              LatoFontStyle(
                      text: val,
                      fontSize: CommonTextFontSize.f14,
                      color: e.title == "Bag savings"
                          ? cartCtrl.appCtrl.appTheme.greenColor
                          : e.title == "Coupon Discount"
                              ? cartCtrl.appCtrl.appTheme.primary
                              : cartCtrl.appCtrl.appTheme.contentColor)
                  .gestures(onTap: () {
                if (e.value == "Apply Coupon") Get.toNamed(routeName.coupons,arguments: cartCtrl.cartModelList!.totalAmount);
              }),
            ],
          ).marginOnly(bottom: AppScreenUtil().screenHeight(10));
        }).toList(),
        Divider(color: cartCtrl.appCtrl.appTheme.greyLight25),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          LatoFontStyle(
              text: CartFont().totalAmount,
              fontSize: CommonTextFontSize.f14,
              color: cartCtrl.appCtrl.appTheme.blackColor,
              fontWeight: FontWeight.w600),
          LatoFontStyle(
              text: "\$${cartCtrl.cartModelList!.totalAmount}",
              fontSize: CommonTextFontSize.f14,
              color: cartCtrl.appCtrl.appTheme.blackColor,
              fontWeight: FontWeight.w600)
        ]).marginOnly(bottom: AppScreenUtil().screenHeight(10)),
        if (cartCtrl.cartModelList != null)
          DeliveryCharges(
              deliveryChargesInstruction:
                  cartCtrl.cartModelList!.deliveryChargesInstruction)
      ]).marginSymmetric(
          horizontal: AppScreenUtil().screenWidth(15),
          vertical: AppScreenUtil().screenHeight(20));
    });
  }
}
