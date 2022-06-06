import '../../../../../config.dart';

class BannerTextLayout extends StatelessWidget {
  final dynamic data;
  const BannerTextLayout({Key? key,this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppScreenUtil().screenWidth(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LatoFontStyle(
                text: data['title'],
                fontSize: 16,
              ),
              const Space(0, 5),
              LatoFontStyle(
                text: data['offer'],
                fontSize: 20,
                color: appCtrl.appTheme.primary,
                fontWeight: FontWeight.bold,
              ),
              const Space(0, 5),
              LatoFontStyle(
                text: data['subTitle'],
                fontSize: 12,
                color: appCtrl.appTheme.contentColor,
                fontWeight: FontWeight.w300,
              ),
              const Space(0, 12),
            ],
          ),
        );
      }
    );
  }
}
