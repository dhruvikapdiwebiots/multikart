

import '../../config.dart';

class AddAddressController extends GetxController{
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  List addressType =[];
  int selectRadio =0;
  String value = "home";

  var state = [
    "Select state",
    "Gujarat",
    "Punjab",
  ];

  var country = [
    "New Zealand",
    "Australia",
    "India",
  ];

  //select address
  selectAddressType(val,index){
    value = val['title']!;
    selectRadio = index;
    update();
  }

  TextEditingController txtCountry = TextEditingController();
  TextEditingController txtFullName = TextEditingController();
  TextEditingController txtMobileNumber = TextEditingController();
  TextEditingController txtPinCode = TextEditingController();
  TextEditingController txtFlatHouseBuilding = TextEditingController();
  TextEditingController txtAreaColonyStreet = TextEditingController();
  TextEditingController txtLandmark = TextEditingController();
  TextEditingController txtTownCity = TextEditingController();
  TextEditingController txtStateProvinceRegion = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final FocusNode countryFocus = FocusNode();
  final FocusNode fullNameFocus = FocusNode();
  final FocusNode mobileNumberFocus = FocusNode();
  final FocusNode pinCodeFocus = FocusNode();
  final FocusNode flatHouseBuildingFocus = FocusNode();
  final FocusNode areaColonyStreetFocus = FocusNode();
  final FocusNode landmarkFocus = FocusNode();
  final FocusNode townCityFocus = FocusNode();
  final FocusNode stateProvinceRegionFocus = FocusNode();

  String stateSelectedValue ="Select state";
  String countrySelectedValue ="New Zealand";

  @override
  void onReady() {
    // TODO: implement onReady
    addressType = AppArray().addressType;
    super.onReady();
  }
}