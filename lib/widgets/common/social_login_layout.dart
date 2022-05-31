import '../../config.dart';

class SocialLoginLayout extends StatelessWidget {
  const SocialLoginLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: AppScreenUtil().screenWidth(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SocialButtonLayout(
            image: iconAssets.google,
          ).gestures(onTap: (){}),
          const Space(15, 0),
          SocialButtonLayout(
            image: iconAssets.fb,
          ).gestures(onTap: (){}),
          const Space(15, 0),
          SocialButtonLayout(
            image: iconAssets.apple,
          ).gestures(onTap: (){}),
        ],
      ),
    );
  }
}
