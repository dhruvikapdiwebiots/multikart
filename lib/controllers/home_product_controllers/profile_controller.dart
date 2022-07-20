import 'package:get_storage/get_storage.dart';

import '../../config.dart';

class ProfileController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  final storage = GetStorage();
  CartModel? cartModelList;
  List<ProfileModel> drawerList = [];

  @override
  void onReady() {
    // TODO: implement onReady
    drawerList = profileList;
    print(drawerList);
    update();
    super.onReady();
  }
}
