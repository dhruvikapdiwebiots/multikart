import '../../config.dart';

class MenuRoundedIcon extends StatelessWidget {
  const MenuRoundedIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Icon(
          Icons.menu_rounded,
          size: AppScreenUtil().size(25),
          color: appCtrl.appTheme.blackColor,
        );
      }
    );
  }
}
