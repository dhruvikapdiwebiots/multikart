import '../../../config.dart';

class Payment extends StatelessWidget {
  final paymentCtrl = Get.put(PaymentController());

  Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PaymentController>(builder: (_) {
      return Scaffold(
        appBar: HomeProductAppBar(
          onTap: () => Get.back(),
          titleChild: CommonAppBarTitle(
            title: PaymentFont().paymentDetails,
            desc: PaymentFont().steps3Of3,
          ),
        ),
        body:  Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const OfferPromotionLayout(),
                  const Space(0, 30),
                  const BorderLineLayout(),
                  const Space(0, 30),
                  const PaymentMethod(),
                  CartOrderDetailLayout(cartModelList: cartList,isDeliveryShow: false,),
                ],
              ).marginSymmetric(vertical: Insets.i20),
            ),
            CartBottomLayout(
              desc: CartFont().viewDetail,
              buttonName: PaymentFont().payNow,
              totalAmount: paymentCtrl.totalAmount.toString(),
              onTap: () {
                Get.toNamed(routeName.orderSuccess,
                    arguments: paymentCtrl.totalAmount.toString());
              },
            )
          ],
        ),
      );
    });
  }
}
