import 'package:multikart/config.dart';

class OrderHistory extends StatelessWidget {
  final orderHistoryCtrl = Get.put(OrderHistoryController());

  OrderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderHistoryController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: orderHistoryCtrl.appCtrl.appTheme.whiteColor,
          title: Text(OrderHistoryFont().orderHistory),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //search text box and filter
              OrderHistoryWidget().searchTextBoxAndFilter(
                  controller: orderHistoryCtrl.controller, onTap: () {}),
              const Space(0, 20),
              ...orderHistoryCtrl.orderHistoryList.asMap().entries.map((e) {
                return OrderHistoryCard(
                  index: e.key,
                  lastIndex: orderHistoryCtrl.orderHistoryList.length - 1,
                  orderHistoryModel: e.value,
                ).gestures(onTap: ()=> Get.toNamed(routeName.orderDetail));
              }).toList()
            ],
          ).width(MediaQuery.of(context).size.width),
        ),
      );
    });
  }
}
