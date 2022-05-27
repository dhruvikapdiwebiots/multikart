import 'package:flutter/foundation.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:multikart/config.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with TickerProviderStateMixin {
  final onBoardingCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());
  final introKey = GlobalKey<IntroductionScreenState>();

  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            AuthenticationAppBar(),

          ],
        ),
      ),
    );
  }
}
