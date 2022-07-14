import '../../../../config.dart';

class ReviewNameDate extends StatelessWidget {
  final Reviews? reviews;
  const ReviewNameDate({Key? key,this.reviews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LatoFontStyle(
                  text: reviews!.name,
                  fontWeight: FontWeight.normal,
                  fontSize: CommonTextFontSize.textSizeSMedium,
                  color: appCtrl.appTheme.blackColor,
                ),
                LatoFontStyle(
                  text: "|",
                  fontWeight: FontWeight.normal,
                  fontSize: CommonTextFontSize.textSizeSMedium,
                  color: appCtrl.appTheme.blackColor,
                ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(10)),
                LatoFontStyle(
                  text: reviews!.date,
                  fontWeight: FontWeight.normal,
                  fontSize: CommonTextFontSize.textSizeSMedium,
                  color: appCtrl.appTheme.blackColor,
                ),
              ],
            ),
            Rating(
              val: reviews!.rating,
              onRatingUpdate: (val) {},
            )
          ],
        ).marginOnly(left: AppScreenUtil().screenWidth(15));
      }
    );
  }
}
