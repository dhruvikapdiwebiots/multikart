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
      return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: AppScreenUtil().screenHeight(580),
                child: Stack(
                  children: [
                    AuthenticationAppBar(
                      onTap: () => onBoardingCtrl.readIntroPage(),
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
                  onTap: () => onBoardingCtrl.readIntroPage()),
              const Space(0, 5),
              CommonAccountText(
                  text1: CommonTextFont().alreadyAccount,
                  text2: CommonTextFont().signIn,
                  textColor: onBoardingCtrl.appCtrl.appTheme.contentColor,
                  fontWeight: FontWeight.w700,
                  onTap: () => onBoardingCtrl.readIntroPage()),
              const Space(0, 5),
            ],
          ),
        ),
      );
    });
  }
}
