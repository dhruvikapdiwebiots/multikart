import '../../config.dart';

class SkipTextWidget extends StatelessWidget {
  final GestureTapCallback? onTap;

  const SkipTextWidget(
      {Key? key,
        this.onTap,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      'SKIP',
    )
        .fontFamily(GoogleFonts.lato().fontFamily.toString())
        .fontSize(AppScreenUtil().fontSize(16))
        .fontFamily(FontWeight.w700.toString()).gestures(onTap: onTap);
  }
}