import 'package:multikart/config.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with TickerProviderStateMixin {
  var onBoardingCtrl = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(builder: (_) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: AppScreenUtil().screenHeight(580),
              child: Stack(
                children: [
                  AuthenticationAppBar(
                    isDone: onBoardingCtrl.current ==
                            onBoardingCtrl.imgList.length - 1
                        ? true
                        : false,
                  ),
                  const OnBoardList(),
                ],
              ),
            ),
            const Space(0, 5),
            CustomButton(
              title: OnBoardFont().startShopping.toUpperCase(),
            ),
            const Space(0, 5),
            CommonAccountText(
              text1: CommonTextFont().alreadyAccount,
              text2: CommonTextFont().signIn,
              textColor: onBoardingCtrl.appCtrl.appTheme.contentColor,
              fontWeight: FontWeight.w700,
              onTap:() => Get.toNamed(routeName.login),
            ),
            const Space(0, 5),
          ],
        ),
      );
    });
  }
}
