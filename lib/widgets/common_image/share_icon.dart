import '../../config.dart';

class ShareIcon extends StatelessWidget {
  const ShareIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return SvgPicture.asset(
        svgAssets.share,
        colorFilter: ColorFilter.mode(
            appCtrl.appTheme.blackColor, BlendMode.srcIn),
      );
    });
  }
}
