import '../../../../config.dart';

class DrawerLeadingTitle extends StatelessWidget {
  final dynamic data;
  const DrawerLeadingTitle({Key? key,this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Container(
          margin: EdgeInsets.only(
              bottom: AppScreenUtil().screenHeight(8.0),
              top: AppScreenUtil().screenHeight(10)),
          padding: EdgeInsets.symmetric(
              vertical: AppScreenUtil().screenHeight(10),
              horizontal: AppScreenUtil().screenWidth(10)),
          decoration: BoxDecoration(
              borderRadius:
              BorderRadius.circular(AppScreenUtil().borderRadius(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      data['icon'] == "assets/svg/flags.svg"
                          ? SvgPicture.asset(svgAssets.flags,
                          fit: BoxFit.fill)
                          : SvgPicture.asset(data['icon'],
                          color: appCtrl.appTheme.blackColor),
                    ],
                  ),
                  const Space(20, 0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LatoFontStyle(
                          text: data['title'] == "Mode"
                              ? appCtrl.isTheme
                              ? "Dark"
                              : 'Light'
                              : data['title'],
                          fontSize: DrawerFontSize.textSizeSmall,
                          fontWeight: FontWeight.w600),
                      LatoFontStyle(
                        text: data['subTitle'],
                        fontSize: DrawerFontSize.textSizeSmall,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                ],
              ),
              if (data['title'] == "Mode")
                ThemeSwitcher(
                  onToggle: (val) {
                    appCtrl.isTheme = val;
                    appCtrl.update();
                    ThemeService().switchTheme(val);
                  },
                  status2: appCtrl.isTheme,
                )
            ],
          ),
        );
      }
    );
  }
}
