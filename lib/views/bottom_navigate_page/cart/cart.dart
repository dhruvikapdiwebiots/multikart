

import '../../../config.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final cartCtrl = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(builder: (_) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CartList(),
              ProductDetailWidget().commonText(
                  text: CartFont().youMayAlsoLike,
                  fontSize: CommonTextFontSize.f14),
              SimilarProductLayout(
                data: cartCtrl.similarList,
                bottom: 30,
              ),
              const BorderLineLayout(),
              ProductDetailWidget().commonText(
                  text: CartFont().coupons, fontSize: CommonTextFontSize.f14),
              const Space(0, 20),
              const CouponTextBox(),
              const BorderLineLayout(),
            ],
          ),
        ),
      );
    });
  }
}
