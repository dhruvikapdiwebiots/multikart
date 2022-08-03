import 'package:get_storage/get_storage.dart';
import 'package:multikart/views/pages/currency.dart';

import '../../config.dart';

class ProfileController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  final storage = GetStorage();
  CartModel? cartModelList;
  List<ProfileModel> drawerList = [];
  String genderSelectedValue = "Male";

  var gender = ["Male", "Female", "Other"];

  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtLastName = TextEditingController();
  TextEditingController txtDob = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  final FocusNode firstNameFocus = FocusNode();
  final FocusNode lastNameFocus = FocusNode();
  final FocusNode dobFocus = FocusNode();
  final FocusNode mobileNumberFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();

  @override
  void onReady() {
    // TODO: implement onReady
    drawerList = profileList;
    update();
    super.onReady();
  }

  //language bottom sheet
  bottomSheet(isLanguage) {
    Get.bottomSheet(
      BottomSheetLayout(child: isLanguage? LanguageBottomSheet(): CurrencyBottomSheet()),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(AppScreenUtil().borderRadius(15)),
            topLeft: Radius.circular(AppScreenUtil().borderRadius(15))),
      ),
    );
  }

//go to page index wise
  goToPage(index) async {
    appCtrl.isShimmer =true;
    appCtrl.update();
    if (index == 2) {
      Get.toNamed(routeName.pageList);
    } else if (index == 3) {
      Get.toNamed(routeName.orderHistory);
    } else if (index == 4) {
      DashboardController dashboardController = Get.find();
      appCtrl.isCart = true;
      dashboardController.bottomNavigationChange(3, Get.context);

      await storage.write(Session.selectedIndex, index);
      appCtrl.update();
    } else if (index == 5) {
      Get.toNamed(routeName.cardBalance);
    } else if (index == 6) {
      Get.toNamed(routeName.saveAddress);
    } else if (index == 7) {
      bottomSheet(true);
    }  else if (index == 8) {
      bottomSheet(false);
    } else if (index == 9) {
      Get.toNamed(routeName.notification);
    } else if (index == 10) {
      Get.toNamed(routeName.setting);
    } else if (index == 11) {
      Get.toNamed(routeName.profileSetting);
    }else if (index == 12) {
      Get.toNamed(routeName.termsCondition);
    }else if (index == 13) {
      Get.toNamed(routeName.help);
    }
    update();
    await Future.delayed(Durations.s3);
    appCtrl.isShimmer =false;
    appCtrl.update();
    Get.forceAppUpdate();
  }
}
