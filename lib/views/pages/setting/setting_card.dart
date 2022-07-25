import '../../../config.dart';

class SettingCard extends StatelessWidget {
  final ProfileModel? profileModel;
  const SettingCard({Key? key,this.profileModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LatoFontStyle(text: profileModel!.title,fontWeight: FontWeight.w700,fontSize: FontSizes.f14,color: appCtrl.appTheme.blackColor,),
                const Space(0, 5),
                LatoFontStyle(text: profileModel!.subTitle,fontSize: FontSizes.f12,color: appCtrl.appTheme.contentColor)
              ],
            ),
            if (profileModel!.title == "Mode")
              ThemeSwitcher(
                  onToggle: (val) {
                    appCtrl.isTheme = val;
                    appCtrl.update();
                    ThemeService().switchTheme(val);
                  },
                  status2: appCtrl.isTheme),
            if (profileModel!.title == "RTL")
              ThemeSwitcher(
                  onToggle: (val) {
                    appCtrl.isRTL = val;
                    appCtrl.update();
                    Get.forceAppUpdate();
                  },
                  status2: appCtrl.isRTL),
            if (profileModel!.title == "Notification")
              ThemeSwitcher(
                  onToggle: (val) {
                    appCtrl.isNotificationShow = val;
                    appCtrl.update();
                    Get.forceAppUpdate();
                  },
                  status2: appCtrl.isNotificationShow)
          ],
        ).marginSymmetric(vertical : AppScreenUtil().screenHeight(10),horizontal: AppScreenUtil().screenWidth(15));
      }
    );
  }
}
