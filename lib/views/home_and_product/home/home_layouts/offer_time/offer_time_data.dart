import '../../../../../config.dart';

class OfferTimeData extends StatelessWidget {
  const OfferTimeData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LatoFontStyle(
              text: HomeFont().denimWear,
              fontSize: HomeFontSize.textSizeSmall,
              fontWeight: FontWeight.normal,
              color: appCtrl.appTheme.contentColor,
            ),
            LatoFontStyle(
              text: HomeFont().salesStartIn,
              fontSize: HomeFontSize.textSizeMedium,
              fontWeight: FontWeight.normal,
              color: appCtrl.appTheme.blackColor,
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
              color: appCtrl.appTheme.contentColor,
            ),
          ],
        );
      }
    );
  }
}
