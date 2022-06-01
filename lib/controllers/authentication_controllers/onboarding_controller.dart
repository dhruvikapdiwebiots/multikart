
import 'package:carousel_slider/carousel_state.dart';
import 'package:get_storage/get_storage.dart';
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
  final storage = GetStorage();

  @override
  void onReady() async {
    imgList = AppArray().onBoardingList;
    update();
    pageController =
        PageController(initialPage: 0, viewportFraction: 0.8);
    super.onReady();
  }
  
  //read intro 
  readIntroPage()async{
    await storage.write(Session.isIntro, true);
    update();
    Get.toNamed(routeName.login);
  }
}
