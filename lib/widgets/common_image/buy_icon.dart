import '../../config.dart';

class BuyIcon extends StatelessWidget {
  final Color? color;
  const BuyIcon({Key? key,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return SvgPicture.asset(
          svgAssets.buy,
          color: color ?? appCtrl.appTheme.blackColor,
        );
      }
    );
  }
}
