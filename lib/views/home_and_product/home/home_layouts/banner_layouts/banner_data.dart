

import '../../../../../config.dart';

class HomeBannerData extends StatelessWidget {
  final dynamic data;

  const HomeBannerData({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Container(
        margin:
            EdgeInsets.symmetric(horizontal: AppScreenUtil().screenWidth(15)),
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(AppScreenUtil().borderRadius(10))),
        child: Stack(
          children: <Widget>[
            HomeWidget().bannerImage(data['image']),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BannerTextLayout(
                  data: data,
                ),
                CustomButton(
                  fontSize: HomeFontSize.textSizeSmall,
                  fontWeight: FontWeight.w500,
                  width: AppScreenUtil().screenWidth(120),
                  title: data['buttonTitle'],
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
