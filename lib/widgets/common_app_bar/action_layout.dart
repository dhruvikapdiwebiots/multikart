import '../../config.dart';

class AppBarActionLayout extends StatelessWidget {
  const AppBarActionLayout(
      {Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Row(
        children: [
          if(appCtrl.isShare)
          const ShareIcon()
              .paddingSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
          if(appCtrl.isSearch)
          const SearchIcon().paddingSymmetric(horizontal: AppScreenUtil().screenWidth(appCtrl.isSearch ? appCtrl.isNotification ?0:10 :10)),
          if(appCtrl.isNotification)
          const NotificationIcon()
              .paddingSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
          if(appCtrl.isHeart)
           HeartIcon(color: appCtrl.appTheme.blackColor,).paddingSymmetric(horizontal: AppScreenUtil().screenWidth(appCtrl.isHeart && appCtrl.isCart?0:10)),
          if(appCtrl.isCart)
          const BuyIcon().paddingSymmetric(
              horizontal: AppScreenUtil().screenWidth(15),
              vertical: AppScreenUtil().screenHeight(15)),
        ],
      );
    });
  }
}
