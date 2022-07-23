import 'package:multikart/views/order_page/order_history/order_history_layouts/order_rating.dart';

import '../../../../config.dart';

class OrderDaysWise extends StatelessWidget {
  final DaysWiseList? daysWiseList;
  final int? index, lastIndex;
  final bool isRatingShow;

  const OrderDaysWise(
      {Key? key,
      this.daysWiseList,
      this.lastIndex,
      this.index,
      this.isRatingShow = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  OrderHistoryWidget().imageLayout(daysWiseList!.image),
                  OrderHistorySizeQty(daysWiseList: daysWiseList)
                ],
              ),
              OrderHistoryWidget()
                  .statusLayout(daysWiseList!.status!.toUpperCase())
            ]).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
        const Space(0, 20),
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            Image.asset(
              imageAssets.mapSection,
              height: AppScreenUtil().screenHeight(100),
              fit: BoxFit.fill,
            ),
            Row(
              children: [
                OrderDateDeliveryStatus(
                    title: OrderHistoryFont().ordered, value: daysWiseList!.date),
                const Space(15, 0),
                OrderDateDeliveryStatus(
                    title:OrderHistoryFont().deliveryStatus,
                    value: daysWiseList!.deliveryStatus)
              ],
            )
          ],
        ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
        if (isRatingShow)
          const OrderRating(),
        const Space(0, 15),
        if (index != lastIndex)
          Divider(
              color: appCtrl.appTheme.borderColor,
              endIndent: 15,
              indent: 15,
              thickness: 1),
        const Space(0, 15)
      ]);
    });
  }
}
