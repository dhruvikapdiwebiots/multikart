import 'package:multikart/common/array/order_history_array.dart';

import '../../config.dart';

class OrderDetailController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  TextEditingController controller = TextEditingController();
  List<OrderHistoryModel> orderHistoryList =[];

  var data = [{
    "title":"Out For Delivery",
    "date":"expected delivery on monday",
    "isCompete":false,
  },{
    "title":"In Transit",
    "date":"10.00 am, 21/05/2020",
    "isCompete":true,
  },{
    "title":"Ready To Ship",
    "date":"10.00 am, 21/05/2020",
    "isCompete":true,
  },
    {
      "title":"Ordered",
      "date":"20/05/2020",
      "isCompete":true,
    }];

  @override
  void onReady() {
    // TODO: implement onReady
    orderHistoryList = orderHistory;
    update();
    super.onReady();
  }
}
