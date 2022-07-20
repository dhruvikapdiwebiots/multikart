import 'package:multikart/config.dart';

class CartOrderDetailLayout extends StatelessWidget {
  final CartModel? cartModelList;
  final bool isDeliveryShow, isApplyText;

  const CartOrderDetailLayout(
      {Key? key,
      this.isDeliveryShow = true,
      this.cartModelList,
      this.isApplyText = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ...cartModelList!.orderDetail!.map((e) {
          String val;
          if ((e.title == "Bag savings")) {
            val = "-\$${e.value}";
          } else if ((e.value == "Apply Coupon")) {
            val = e.value;
          } else {
            val = "\$${e.value}";
          }
          return CartDetail(
            isApplyText: isApplyText,
            totalAmount: cartModelList!.totalAmount.toString(),
            val: val,
            orderDetail: e.value,
          );
        }).toList(),
        Divider(color: appCtrl.appTheme.greyLight25),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          LatoFontStyle(
              text: CartFont().totalAmount,
              fontSize: FontSizes.f14,
              color: appCtrl.appTheme.blackColor,
              fontWeight: FontWeight.w600),
          LatoFontStyle(
              text: "\$${cartModelList!.totalAmount}",
              fontSize: FontSizes.f14,
              color: appCtrl.appTheme.blackColor,
              fontWeight: FontWeight.w600)
        ]).marginOnly(bottom: AppScreenUtil().screenHeight(10)),
        if (isDeliveryShow)
          if (cartModelList != null)
            DeliveryCharges(
                deliveryChargesInstruction:
                    cartModelList!.deliveryChargesInstruction)
      ]).marginSymmetric(
          horizontal: AppScreenUtil().screenWidth(15),
          vertical: AppScreenUtil().screenHeight(20));
    });
  }
}
