import '../../config.dart';

class WishlistAndRemove extends StatelessWidget {
  const WishlistAndRemove({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                HeartIcon(color: appCtrl.appTheme.blackColor)
                    .height(AppScreenUtil().screenHeight(14)),
                const Space(5, 0),
                LatoFontStyle(
                  text: CommonTextFont().moveToWishList,
                  fontSize: CommonTextFontSize.f12,
                  fontWeight: FontWeight.w600,
                  color: appCtrl.appTheme.blackColor,
                )
              ],
            ),
            const LatoFontStyle(
              text: "|",
            ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(10)),
            Row(
              children: [
                SvgPicture.asset(
                  svgAssets.delete,
                  height: AppScreenUtil().screenHeight(18),
                ),
                const Space(5, 0),
                LatoFontStyle(
                  text: CommonTextFont().remove,
                  fontSize: CommonTextFontSize.f12,
                  fontWeight: FontWeight.w600,
                  color: appCtrl.appTheme.blackColor,
                )
              ],
            )
          ],
        ).marginOnly(bottom: AppScreenUtil().screenHeight(5));
      }
    );
  }
}
