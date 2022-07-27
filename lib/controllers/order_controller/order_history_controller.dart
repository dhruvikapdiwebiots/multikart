import '../../config.dart';

class OrderHistoryController extends GetxController {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  TextEditingController controller = TextEditingController();
  List<OrderHistoryModel> orderHistoryList = [];

  @override
  void onReady() {
    // TODO: implement onReady
    orderHistoryList = orderHistory;
    update();
    super.onReady();
  }

  //common bottom sheet
  bottomSheetLayout() {
    Get.bottomSheet(
      const RatingReview(),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
    );
  }
}
