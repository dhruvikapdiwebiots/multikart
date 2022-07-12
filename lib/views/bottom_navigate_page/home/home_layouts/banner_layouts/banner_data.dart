import '../../../../../config.dart';

class HomeBannerData extends StatelessWidget {
  final HomeBannerModel? data;

  const HomeBannerData({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Container(
        margin:
            EdgeInsets.symmetric(horizontal: AppScreenUtil().screenWidth(18)),
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(AppScreenUtil().borderRadius(10))),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            HomeWidget().bannerImage(data!.image, context),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BannerTextLayout(
                  data: data,
                ),
                CustomButton(
                  height: 25,
                  fontSize: CommonTextFontSize.textSizeSmall,
                  fontWeight: FontWeight.w500,
                  width: AppScreenUtil().screenWidth(100),
                  title: data!.buttonTitle.toString(),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
