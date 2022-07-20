import '../../../../config.dart';

class OrderSuccessCard extends StatelessWidget {
  final OrderSummaryModel? orderSummaryModel;
  final int? index;

  const OrderSuccessCard({Key? key, this.orderSummaryModel, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Container(
          padding:
              EdgeInsets.symmetric(horizontal: AppScreenUtil().screenWidth(15)),
          child: Column(children: [
            Row(children: [
              ClipRRect(
                  borderRadius:
                      BorderRadius.circular(AppScreenUtil().borderRadius(5)),
                  child: FadeInImageLayout(
                      image: orderSummaryModel!.image,
                      height: AppScreenUtil().screenHeight(70),
                      width: AppScreenUtil().screenWidth(80),
                      fit: BoxFit.cover)),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                LatoFontStyle(
                    text: orderSummaryModel!.name,
                    fontWeight: FontWeight.w600,
                    fontSize: FontSizes.f14,
                    color: appCtrl.appTheme.contentColor),
                Row(children: [
                  LatoFontStyle(
                      text: "Size:",
                      fontWeight: FontWeight.w700,
                      fontSize: FontSizes.f13,
                      color: appCtrl.appTheme.contentColor),
                  const Space(5, 0),
                  LatoFontStyle(
                      text: orderSummaryModel!.size,
                      fontWeight: FontWeight.w700,
                      fontSize: FontSizes.f13,
                      color: appCtrl.appTheme.greenColor),
                  LatoFontStyle(
                      text: "Qty:",
                      fontWeight: FontWeight.w700,
                      fontSize: FontSizes.f13,
                      color: appCtrl.appTheme.contentColor),
                  const Space(5, 0),
                  LatoFontStyle(
                      text: orderSummaryModel!.qty.toString(),
                      fontWeight: FontWeight.w700,
                      fontSize: FontSizes.f13,
                      color: appCtrl.appTheme.greenColor),
                ]),
                LatoFontStyle(
                    text: "\$${orderSummaryModel!.price}",
                    fontWeight: FontWeight.w600,
                    fontSize: FontSizes.f14,
                    color: appCtrl.appTheme.contentColor),
              ]).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15))
            ]),
            const Space(0, 15),
            if (index != orderSummaryArray.length - 1)
              Divider(color: appCtrl.appTheme.blackColor),
            const Space(0, 15),
          ]));
    });
  }
}
