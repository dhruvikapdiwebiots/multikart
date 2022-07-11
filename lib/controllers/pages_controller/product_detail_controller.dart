import '../../config.dart';

class ProductDetailController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  TextEditingController controller = TextEditingController();
  Product product = Product();
  List<Images> imagesList = [];
  int current =0;
  int colorSelected = 1;

  @override
  void onReady() {
    // TODO: implement onReady
    print('product : ${product.images}');
    product = productList;

    for(var i=0;i<product.images!.length;i++){
      if(colorSelected == product.images![i].colorId) {
        imagesList.add(product.images![i]);
      }
    }
    update();
    print('product : ${product.images}');
    print('imagesList : ${imagesList}');
    super.onReady();
  }
}
