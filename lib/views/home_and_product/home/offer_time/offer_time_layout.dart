import '../../../../config.dart';

class OfferTimeLayout extends StatelessWidget {
  const OfferTimeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeCtrl) {
      return Container(
        color: homeCtrl.appCtrl.appTheme.whiteColor,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: AppScreenUtil().screenHeight(10),
                  bottom: AppScreenUtil().screenHeight(25)),
              height: AppScreenUtil().size(155),
              padding: EdgeInsets.only(left: AppScreenUtil().screenWidth(18)),
              alignment: Alignment.centerLeft,
              color: homeCtrl.appCtrl.appTheme.lightGray,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LatoFontStyle(
                    text: HomeFont().denimWear,
                    fontSize: HomeFontSize.textSizeSmall,
                    fontWeight: FontWeight.normal,
                    color: homeCtrl.appCtrl.appTheme.contentColor,
                  ),
                  LatoFontStyle(
                    text: HomeFont().salesStartIn,
                    fontSize: HomeFontSize.textSizeMedium,
                    fontWeight: FontWeight.normal,
                    color: homeCtrl.appCtrl.appTheme.blackColor,
                  ),
                  Row(
                    children: [
                      TimeLayout(
                        title: HomeFont().hours,
                        value: "15",
                      ),
                      const Space(10, 0),
                      TimeLayout(
                        title: HomeFont().minutes,
                        value: "10",
                      ),
                      const Space(10, 0),
                      TimeLayout(
                        title: HomeFont().seconds,
                        value: "35",
                      ),
                    ],
                  ),
                  LatoFontStyle(
                    text: HomeFont().exploreNow,
                    fontSize: HomeFontSize.textSizeSMedium,
                    fontWeight: FontWeight.normal,
                    textDecoration: TextDecoration.underline,
                    color: homeCtrl.appCtrl.appTheme.contentColor,
                  ),
                ],
              ),
            ),
            Image.asset(
              imageAssets.girl,
              fit: BoxFit.cover,
              height: AppScreenUtil().screenHeight(220),
            )
          ],
        ),
      );
    });
  }
}
