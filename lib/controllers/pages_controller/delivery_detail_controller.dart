import '../../config.dart';

class DeliveryDetailController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  @override
  void onReady() {
    // TODO: implement onReady

    update();
    super.onReady();
  }
}

var deliveryDetail = {
  "addressList": [
    {
      "name": "Carolina S Seo",
      "address": "3501  Maloy Court,",
      "addressType": "Home",
      "locality": "East Elmhurst,",
      "state": "New York City",
      "city": "NY",
      'pinCode': "11369",
      "phone": "903-239-1284"
    },
    {
      "name": "Carolina S Seo",
      "address": "3501  Maloy Court,",
      "addressType": "Home",
      "locality": "East Elmhurst,",
      "state": "New York City",
      "city": "NY",
      'pinCode': "11369",
      "phone": "903-239-1284"
    }
  ],
  "expectedDelivery" :[{
    'image' : imageAssets.product14,
    'name':"Pink Hoodie t-shirt full",
    "date":"25th July"
  },{
    'image' : imageAssets.product15,
    'name':"Pink Hoodie t-shirt full",
    "date":"25th July"
  }]
};
