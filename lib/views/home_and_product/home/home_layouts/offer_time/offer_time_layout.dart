import '../../../../../config.dart';

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
              child: const OfferTimeData(),
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
