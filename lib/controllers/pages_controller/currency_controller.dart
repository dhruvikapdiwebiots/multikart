import 'package:get_storage/get_storage.dart';

import '../../config.dart';

class CurrencyController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());
  final storage = GetStorage();
  dynamic currencyVal;

//currency change
  currencyChange(val, code) async {
    print(val);
    print(code);
    currencyVal = storage.read('currencyVal') ?? AppArray().currencyList[0];

    print("currencyVal : $currencyVal");
    print(" val[code] : ${ currencyVal[code]}");

    appCtrl.priceSymbol = val['symbol'];

    appCtrl.rateValue = currencyVal[code];
    print("rate ${appCtrl.rateValue}");
    appCtrl.update();
    update();
    Get.forceAppUpdate();
    await storage.write('currencyVal', val);
    Get.back();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    currencyVal = storage.read('currencyVal') ?? "INR";
    super.onReady();
  }
}
