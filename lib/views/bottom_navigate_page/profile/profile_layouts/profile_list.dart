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
                        text: data!.title!.tr,
                        fontSize: FontSizes.f12,
                        fontWeight: FontWeight.w600),
                    LatoFontStyle(
                        text: data!.subTitle!.tr,
                        fontSize: FontSizes.f12,
                        fontWeight: FontWeight.normal)
                  ],
                )
              ],
            ),
            if (data!.title == "Mode" ||data!.title == "الوضع" ||data!.title == "तरीका" ||data!.title == "방법" )
              ThemeSwitcher(
                  onToggle: (val) {
                    appCtrl.isTheme = val;
                    appCtrl.update();
                    ThemeService().switchTheme(val);
                  },
                  status2: appCtrl.isTheme),
            if (data!.title == "RTL" ||data!.title == "아르 자형티엘"  || data!.title == "आरटीएल"  ||data!.title == "رتيإل" )
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
