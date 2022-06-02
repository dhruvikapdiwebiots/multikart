import '../../config.dart';

class BuyIcon extends StatelessWidget {
  const BuyIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return SvgPicture.asset(
          svgAssets.buy,
          color: appCtrl.appTheme.blackColor,
        );
      }
    );
  }
}
