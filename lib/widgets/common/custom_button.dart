import 'package:multikart/config.dart';

class CustomButton extends StatelessWidget {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  final String title;
  final double padding;
  final double radius;
  final double height;
  final GestureTapCallback? onTap;
  final TextStyle? style;
  final Color? color;
  final Widget? icon;
  final double? width;
  final Border? border;

  CustomButton({
    Key? key,
    required this.title,
    this.padding = 15,
    this.radius = 5,
    this.height = 45,
    this.onTap,
    this.style,
    this.color,
    this.icon,
    this.width,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppScreenUtil().screenWidth(15)),
      height: AppScreenUtil().screenHeight(45),
      decoration: BoxDecoration(
        color: color ?? appCtrl.appTheme.primary,
        border: border,
        borderRadius: radius > 0 ? BorderRadius.circular(radius) : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Row(
              children: [
                icon ?? const HSpace(0),
                const HSpace(10),
              ],
            ),
          Text(
            title,
            textAlign: TextAlign.center,
          )
              .fontSize(AppScreenUtil().fontSize(14))
              .textColor(appCtrl.appTheme.white)
              .fontFamily(GoogleFonts.lato().fontFamily.toString()).fontWeight(FontWeight.w700).letterSpacing(1),
        ],
      ),
    );
  }
}
