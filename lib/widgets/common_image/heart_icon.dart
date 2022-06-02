import '../../config.dart';

class HeartIcon extends StatelessWidget {
  const HeartIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return SvgPicture.asset(
          svgAssets.heart,
          color: appCtrl.appTheme.blackColor,
        );
      }
    );
  }
}
