import '../../../../config.dart';

class OfferTimeLayout extends StatelessWidget {
  const OfferTimeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeController>(
      builder: (homeCtrl) {
        return Container(
          color: homeCtrl.appCtrl.appTheme.whiteColor,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Container(
                margin: EdgeInsets.only(top: AppScreenUtil().screenHeight(10),bottom: AppScreenUtil().screenHeight(25)),
                height: AppScreenUtil().size(155),
                padding: EdgeInsets.only(
                    left: AppScreenUtil().screenWidth(18)),
                alignment: Alignment.centerLeft,
                color: homeCtrl.appCtrl.appTheme.lightGray,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LatoFontStyle(
                      text: "Denim Wear",
                      fontSize: HomeFontSize.textSizeSmall,
                      fontWeight: FontWeight.normal,
                      color: homeCtrl.appCtrl.appTheme.contentColor,
                    ),
                    LatoFontStyle(
                      text: "Sales Starts In",
                      fontSize: HomeFontSize.textSizeMedium,
                      fontWeight: FontWeight.normal,
                      color: homeCtrl.appCtrl.appTheme.blackColor,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: AppScreenUtil().screenHeight(8)),
                          padding: EdgeInsets.symmetric(
                              vertical: AppScreenUtil().screenHeight(4)),
                          decoration: BoxDecoration(
                              color: homeCtrl.appCtrl.appTheme.primary,
                              borderRadius: BorderRadius.circular(
                                  AppScreenUtil().borderRadius(5))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                  AppScreenUtil().screenWidth(5),
                                ),
                                child: LatoFontStyle(
                                  text: "Hours",
                                  textAlign: TextAlign.start,
                                  fontSize: HomeFontSize.textXXSizeSmall,
                                  fontWeight: FontWeight.normal,
                                  color: homeCtrl.appCtrl.appTheme.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                  AppScreenUtil().screenWidth(12),
                                ),
                                child: LatoFontStyle(
                                  text: homeCtrl.hours.toString(),
                                  fontSize: HomeFontSize.textSizeNormal,
                                  fontWeight: FontWeight.w700,
                                  color: homeCtrl.appCtrl.appTheme.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Space(10, 0),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: AppScreenUtil().screenHeight(8)),
                          padding: EdgeInsets.symmetric(
                              vertical: AppScreenUtil().screenHeight(4)),
                          decoration: BoxDecoration(
                              color: homeCtrl.appCtrl.appTheme.primary,
                              borderRadius: BorderRadius.circular(
                                  AppScreenUtil().borderRadius(5))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                  AppScreenUtil().screenWidth(5),
                                ),
                                child: LatoFontStyle(
                                  text: "Hours",
                                  textAlign: TextAlign.start,
                                  fontSize: HomeFontSize.textXXSizeSmall,
                                  fontWeight: FontWeight.normal,
                                  color: homeCtrl.appCtrl.appTheme.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                  AppScreenUtil().screenWidth(12),
                                ),
                                child: LatoFontStyle(
                                  text: "15",
                                  fontSize: HomeFontSize.textSizeNormal,
                                  fontWeight: FontWeight.w700,
                                  color: homeCtrl.appCtrl.appTheme.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Space(10, 0),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: AppScreenUtil().screenHeight(8)),
                          padding: EdgeInsets.symmetric(
                              vertical: AppScreenUtil().screenHeight(4)),
                          decoration: BoxDecoration(
                              color: homeCtrl.appCtrl.appTheme.primary,
                              borderRadius: BorderRadius.circular(
                                  AppScreenUtil().borderRadius(5))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                  AppScreenUtil().screenWidth(5),
                                ),
                                child: LatoFontStyle(
                                  text: "Hours",
                                  textAlign: TextAlign.start,
                                  fontSize: HomeFontSize.textXXSizeSmall,
                                  fontWeight: FontWeight.normal,
                                  color: homeCtrl.appCtrl.appTheme.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                  AppScreenUtil().screenWidth(12),
                                ),
                                child: LatoFontStyle(
                                  text: "15",
                                  fontSize: HomeFontSize.textSizeNormal,
                                  fontWeight: FontWeight.w700,
                                  color: homeCtrl.appCtrl.appTheme.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    LatoFontStyle(
                      text: "Explore Now",
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
      }
    );
  }
}
