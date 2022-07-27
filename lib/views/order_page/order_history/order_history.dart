import 'package:multikart/config.dart';


class OrderHistory extends StatelessWidget {
  final orderHistoryCtrl = Get.put(OrderHistoryController());

  OrderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderHistoryController>(builder: (_) {
      return  Directionality(
        textDirection: orderHistoryCtrl.appCtrl.isRTL ||
            orderHistoryCtrl.appCtrl.languageVal == "ar"
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: const BackArrowButton(),
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

             //order history layout
             const OrderHistoryLayout()
              ],
            ).width(MediaQuery.of(context).size.width),
          ),
        ),
      );
    });
  }
}
