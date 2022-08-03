import 'package:get_storage/get_storage.dart';

import '../../config.dart';

class CurrencyController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());
  final storage = GetStorage();


}
