import '../../../../config.dart';

class ProductBottom extends StatelessWidget {
  const ProductBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
              vertical: AppScreenUtil().screenHeight(12),
              horizontal: AppScreenUtil().screenWidth(15)),
          decoration: BoxDecoration(
            color: appCtrl.appTheme.whiteColor,
            boxShadow: [
              BoxShadow(
                color: appCtrl.appTheme.lightGray,
                spreadRadius: 10,
                blurRadius: 5,
                offset: const Offset(0, 7), // changes position of shadow
              ),
            ],
          ),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    HeartIcon(
                      color: appCtrl.appTheme.blackColor,
                    ),
                    const Space(10, 0),
                     LatoFontStyle(
                      text: ProductDetailFont().wishList,
                      fontWeight: FontWeight.w600,
                      fontSize: FontSizes.f14,
                    )
                  ],
                ),
                VerticalDivider(color: appCtrl.appTheme.greyLight25 ,),
                Row(
                  children: [
                    BuyIcon(
                      color: appCtrl.appTheme.primary,
                    ),
                    const Space(10, 0),
                    LatoFontStyle(
                      text: ProductDetailFont().addToBag,
                      fontWeight: FontWeight.w600,
                      color: appCtrl.appTheme.primary,
                      fontSize: FontSizes.f14,
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
