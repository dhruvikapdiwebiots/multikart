import '../../../../config.dart';

class OrderHistoryCard extends StatelessWidget {
  final OrderHistoryModel? orderHistoryModel;
  final int? index, lastIndex;

  const OrderHistoryCard(
      {Key? key, this.orderHistoryModel, this.index, this.lastIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LatoFontStyle(
            text: orderHistoryModel!.orderDay,
            fontWeight: FontWeight.w700,
            fontSize: FontSizes.f16,
            color: appCtrl.appTheme.blackColor,
          ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
          const Space(0, 20),
          ...orderHistoryModel!.daysWiseList!.asMap().entries.map((data) {
            return OrderDaysWise(
              index: data.key,
              lastIndex: orderHistoryModel!.daysWiseList!.length - 1,
              daysWiseList: data.value,
              isRatingShow: orderHistoryModel!.orderDay == "Past Orders" ? true:false,
            );
          }).toList(),
          const Space(0, 20),
          if (index != lastIndex) const BorderLineLayout(),
          const Space(0, 15),
        ],
      );
    });
  }
}
