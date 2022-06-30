import '../../../../../config.dart';

class BannerTextLayout extends StatelessWidget {
  final HomeBannerModel? data;

  const BannerTextLayout({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Padding(
        padding:
            EdgeInsets.symmetric(horizontal: AppScreenUtil().screenWidth(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LatoFontStyle(
              text: data!.title,
              fontSize: HomeFontSize.textSizeSMedium,
              color: appCtrl.appTheme.blackColor,
              fontWeight: FontWeight.w700,
            ),
            const Space(0, 5),
            LatoFontStyle(
              text: data!.offers,
              fontSize: HomeFontSize.textSizeNormal,
              color: appCtrl.appTheme.primary,
              fontWeight: FontWeight.bold,
            ),
            const Space(0, 5),
            LatoFontStyle(
              text: data!.subTitle,
              fontSize: HomeFontSize.textXSizeSmall,
              color: appCtrl.appTheme.contentColor,
              fontWeight: FontWeight.w400,
            ),
            const Space(0, 8),
          ],
        ),
      );
    });
  }
}
