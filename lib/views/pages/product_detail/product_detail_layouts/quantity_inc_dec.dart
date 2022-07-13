import 'package:flutter/cupertino.dart';
import '../../../../config.dart';

class QuantityIncDec extends StatelessWidget {
  final int? quantity;

  const QuantityIncDec({Key? key, this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailController>(builder: (productCtrl) {
      return Container(
        alignment: Alignment.center,
        width: AppScreenUtil().screenWidth(150),
        height: AppScreenUtil().screenHeight(40),
        margin: EdgeInsets.symmetric(
            horizontal: AppScreenUtil().screenWidth(15),
            vertical: AppScreenUtil().screenHeight(10)),
        padding:
            EdgeInsets.symmetric(vertical: AppScreenUtil().screenHeight(10)),
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(AppScreenUtil().borderRadius(5)),
            color: productCtrl.appCtrl.appTheme.greyLight25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonIncDecButton(
              icon: CupertinoIcons.minus,
              onTap: () => productCtrl.quantityDecrease(),
            ),
            LatoFontStyle(
              text: productCtrl.product.quantity.toString(),
            ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(30)),
            CommonIncDecButton(
              icon: CupertinoIcons.plus,
              onTap: () => productCtrl.quantityIncrease(),
            )
          ],
        ),
      ).marginOnly(bottom: AppScreenUtil().screenHeight(10));
    });
  }
}
