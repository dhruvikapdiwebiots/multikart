import '../../config.dart';

class ProductDetailController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  TextEditingController controller = TextEditingController();
  Product product = Product();
  List<Images> imagesList = [];
  int current =0;
  int currentLast =0;
  final CarouselController sliderController = CarouselController();
  int colorSelected = 1;

  @override
  void onReady() {
    // TODO: implement onReady
    product = productList;

    for(var i=0;i<product.images!.length;i++){
      if(colorSelected == product.images![i].colorId) {
        imagesList.add(product.images![i]);
      }
    }
    update();
    super.onReady();
  }
}
