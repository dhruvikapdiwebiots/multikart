import '../../config.dart';

class HeartIcon extends StatelessWidget {
  final Color? color;
  const HeartIcon({Key? key,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return SvgPicture.asset(
          svgAssets.heart,
          color: color ?? appCtrl.appTheme.contentColor,
        ).gestures(onTap: (){
          appCtrl.selectedIndex =3;
          appCtrl.isHeart = false;
          appCtrl.isCart = true;
          appCtrl.isShare = false;
          appCtrl.isSearch = false;
          appCtrl.isNotification = false;

          appCtrl.update();
          Get.forceAppUpdate();
        });
      }
    );
  }
}
