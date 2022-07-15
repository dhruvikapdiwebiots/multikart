import '../../../../../config.dart';

class HomeCategoryData extends StatelessWidget {
  final HomeCategoryModel? data;
  final int? index;

  const HomeCategoryData({Key? key, this.data, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Padding(
        padding: EdgeInsets.only(
            right: AppScreenUtil().screenWidth(12),
            left: AppScreenUtil().screenWidth(index == 0 ? 10 : 0)),
        child: Column(
          children: [
            SizedBox(
              height: AppScreenUtil().screenHeight(70),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: AppScreenUtil().screenWidth(55),
                    decoration: BoxDecoration(
                      color: appCtrl.appTheme.homeCategoryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  FadeInImageLayout(
                      image: data!.image.toString(),
                      height: AppScreenUtil().screenHeight(60),
                      width: AppScreenUtil().screenWidth(60),
                      fit: BoxFit.fill),
                ],
              ),
            ),
            LatoFontStyle(
              text: data!.title.toString(),
              fontWeight: FontWeight.w600,
              fontSize: CommonTextFontSize.f12,
            )
          ],
        ),
      );
    });
  }
}
