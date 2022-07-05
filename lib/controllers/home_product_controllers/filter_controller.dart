import '../../config.dart';

class FilterController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  List brandFilterList = [];
  List sizeList = [];
  String dropDownVal = "Recommended";
  int selectedBrand = 0;
  var data = [
    {"val": "0.0"},
    {"val": "10.0"},
    {"val": "20.0"},
    {"val": "30.0"},
    {"val": "40.0"},
    {"val": "50.0"},
    {"val": "60.0"},
    {"val": "70.0"},
    {"val": "80.0"},
    {"val": "90.0"},
    {"val": "100.0"}
  ];

  selectBrandFunction(index) {
    selectedBrand = index;
    update();
  }



  @override
  void onReady() {
    // TODO: implement onReady
    brandFilterList = AppArray().brandFilterList;
    sizeList = AppArray().sizeList;
    print(data.length);
    update();
    super.onReady();
  }
}
