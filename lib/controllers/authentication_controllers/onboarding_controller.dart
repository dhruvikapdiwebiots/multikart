
import 'package:carousel_slider/carousel_state.dart';
import 'package:multikart/config.dart';

class OnBoardingController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());
  int current = 0;
  final CarouselController controller = CarouselController();
  CarouselState? carouselState;
  PageController pageController =PageController(initialPage: 0, viewportFraction: 0.8);
  List imgList = [];

  @override
  void onReady() async {
    imgList = AppArray().onBoardingList;
    update();
    pageController =
        PageController(initialPage: 0, viewportFraction: 0.8);
    super.onReady();
  }
}
