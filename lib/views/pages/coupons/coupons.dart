import 'package:multikart/config.dart';

class Coupons extends StatelessWidget {
  final couponCtrl = Get.put(CouponsController());

  Coupons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CouponsController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: couponCtrl.appCtrl.appTheme.whiteColor,
          title: Text(CouponFont().couponTitle),
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    const CouponTextBox(
                      isSuffixIcon: false,
                    ),
                  const Space(0, 10),
                  CouponList(couponList: couponCtrl.couponList,)
                  ],
                ),
              ),
            ),
               if (couponCtrl.cartModelList != null)
              CartBottomLayout(
                desc: CouponFont().maximumSaving,
                buttonName: CouponFont().apply,
                totalAmount: couponCtrl.cartModelList!.totalAmount.toString(),
              )
          ],
        ),
      );
    });
  }
}
