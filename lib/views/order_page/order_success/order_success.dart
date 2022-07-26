import 'package:multikart/config.dart';

class OrderSuccess extends StatelessWidget {
  final orderSuccessCtrl = Get.put(OrderSuccessController());

  OrderSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderSuccessController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: const BackArrowButton(),
          backgroundColor: orderSuccessCtrl.appCtrl.appTheme.whiteColor,
          title: Text(OrderSuccessFont().orderPlaced),
        ),
        body: Stack(alignment: Alignment.bottomCenter, children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(gifAssets.checkCircle),
                const Space(0, 20),
                LatoFontStyle(
                  text: OrderSuccessFont().orderSuccess,
                  fontSize: FontSizes.f22,
                  color: orderSuccessCtrl.appCtrl.appTheme.primary,
                  fontWeight: FontWeight.w700,
                ),
                const Space(0, 20),
                LatoFontStyle(
                  text: OrderSuccessFont().orderDesc,
                  fontSize: FontSizes.f16,
                  color: orderSuccessCtrl.appCtrl.appTheme.blackColor,
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                ).paddingSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
                const Space(0, 30),
                const OrderSuccessDetail(),
                const Space(0, 30),
                const BorderLineLayout(),
                const OrderSummary()
              ],
            ).width(MediaQuery.of(context).size.width),
          ),
          BottomLayout(
              firstButtonText: OrderSuccessFont().trackOrder,
              secondButtonText: OrderSuccessFont().continueShopping)
        ]),
      );
    });
  }
}
