import '../../../../config.dart';

class ProfileList extends StatelessWidget {
  final ProfileModel? data;

  const ProfileList({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return DrawerContainer(
          child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      height: AppScreenUtil().screenHeight(18),
                      width: AppScreenUtil().screenWidth(18),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: appCtrl.appTheme.primary.withOpacity(.2)
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          data!.icon == "assets/svg/flags.svg"
                              ? SvgPicture.asset(svgAssets.flags, fit: BoxFit.fill)
                              : SvgPicture.asset(data!.icon!,
                              color: appCtrl.appTheme.blackColor,height: AppScreenUtil().size(25),)
                        ])
                  ],
                ),
                const Space(20, 0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LatoFontStyle(
                        text: data!.title == "Mode"
                            ? appCtrl.isTheme
                            ? "Dark"
                            : 'Light'
                            : data!.title,
                        fontSize: FontSizes.f12,
                        fontWeight: FontWeight.w600),
                    LatoFontStyle(
                        text: data!.subTitle,
                        fontSize: FontSizes.f12,
                        fontWeight: FontWeight.normal)
                  ],
                )
              ],
            ),
            if (data!.title == "Mode")
              ThemeSwitcher(
                  onToggle: (val) {
                    appCtrl.isTheme = val;
                    appCtrl.update();
                    ThemeService().switchTheme(val);
                  },
                  status2: appCtrl.isTheme),
            if (data!.title == "RTL")
              ThemeSwitcher(
                  onToggle: (val) {
                    appCtrl.isRTL = val;
                    appCtrl.update();
                    Get.forceAppUpdate();
                  },
                  status2: appCtrl.isRTL)
          ]));
    });
  }
}
