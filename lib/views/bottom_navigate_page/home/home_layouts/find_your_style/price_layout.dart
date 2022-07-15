import '../../../../../config.dart';

class PriceLayout extends StatelessWidget {
  final String? totalPrice,mrp, discount;
  final bool isDiscountShow;
  final double fontSize;
  const PriceLayout({Key? key,this.discount,this.mrp,this.totalPrice,this.isDiscountShow = true,this.fontSize = CommonTextFontSize.f12}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<AppController>(
      builder: (appCtrl) {
        return Row(
          children: [
            LatoFontStyle(
              text: '\$$totalPrice',
              fontSize: fontSize,
              fontWeight: FontWeight.normal,
              color: appCtrl.appTheme.blackColor,
            ),
            const Space(5, 0),
            LatoFontStyle(
              text: '\$$mrp',
              fontSize: fontSize,
              fontWeight: FontWeight.normal,
              color: appCtrl.appTheme.contentColor,
              textDecoration: TextDecoration.lineThrough,
            ),
            const Space(5, 0),
            if(isDiscountShow)
            LatoFontStyle(
              text: '($discount off)',
              fontSize: fontSize,
              fontWeight: FontWeight.normal,
              color: appCtrl.appTheme.primary,
            ),
          ],
        ).paddingOnly(left: AppScreenUtil().screenWidth(5));
      }
    );
  }
}
