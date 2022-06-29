import '../../../../../config.dart';

class PriceLayout extends StatelessWidget {
  final String? totalPrice,mrp, discount;
  final bool isDiscountShow;
  const PriceLayout({Key? key,this.discount,this.mrp,this.totalPrice,this.isDiscountShow = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<AppController>(
      builder: (appCtrl) {
        return Row(
          children: [
            LatoFontStyle(
              text: '\$$totalPrice',
              fontSize: HomeFontSize.textSizeSmall,
              fontWeight: FontWeight.normal,
              color: appCtrl.appTheme.blackColor,
            ),
            const Space(5, 0),
            LatoFontStyle(
              text: '\$$mrp',
              fontSize: HomeFontSize.textSizeSmall,
              fontWeight: FontWeight.normal,
              color: appCtrl.appTheme.contentColor,
              textDecoration: TextDecoration.lineThrough,
            ),
            const Space(5, 0),
            if(isDiscountShow)
            LatoFontStyle(
              text: '($discount off)',
              fontSize: HomeFontSize.textSizeSmall,
              fontWeight: FontWeight.normal,
              color: appCtrl.appTheme.primary,
            ),
          ],
        ).paddingOnly(left: AppScreenUtil().screenWidth(5));
      }
    );
  }
}
