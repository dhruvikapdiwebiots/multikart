import '../../config.dart';

class AppBarActionLayout extends StatelessWidget {
  const AppBarActionLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Row(
        children: [
          if (appCtrl.isShare)
            const ShareIcon()
                .paddingSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
          if (appCtrl.isSearch)
            const SearchIcon().paddingSymmetric(
                horizontal: AppScreenUtil().screenWidth(appCtrl.isSearch
                    ? appCtrl.isNotification
                        ? 0
                        : 10
                    : 10)),
          if (appCtrl.isNotification)
            const NotificationIcon()
                .paddingSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
          if (appCtrl.isHeart)
            HeartIcon(
              color: appCtrl.appTheme.blackColor,
            ).gestures(onTap: (){
              if( appCtrl.selectedIndex != 0) {
                Get.back();
              }else if(appCtrl.selectedIndex == 1){
                Get.back();
                Get.back();
              }
              appCtrl.selectedIndex = 3;
              appCtrl.isHeart = false;
              appCtrl.isCart = true;
              appCtrl.isShare = false;
              appCtrl.isSearch = false;
              appCtrl.isNotification = false;

              appCtrl.update();
              Get.forceAppUpdate();
            }).paddingSymmetric(
                horizontal: AppScreenUtil()
                    .screenWidth(appCtrl.isHeart && appCtrl.isCart ? 0 : 10)),
          if (appCtrl.isCart)
            const BuyIcon().paddingSymmetric(
                horizontal: AppScreenUtil().screenWidth(15),
                vertical: AppScreenUtil().screenHeight(15)),
        ],
      );
    });
  }
}
