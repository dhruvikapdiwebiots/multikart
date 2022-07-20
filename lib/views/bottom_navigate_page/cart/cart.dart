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
          body: cartCtrl.cartModelList != null
              ? Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          if (cartCtrl.cartModelList != null) const CartList(),
                          ProductDetailWidget().commonText(
                              text: CartFont().youMayAlsoLike,
                              fontSize: FontSizes.f14),
                          SimilarProductLayout(
                              data: cartCtrl.similarList, bottom: 30),
                          const BorderLineLayout(),
                          ProductDetailWidget().commonText(
                              text: CartFont().coupons,
                              fontSize: FontSizes.f14),
                          const Space(0, 20),
                          const CouponTextBox(),
                          const BorderLineLayout(),
                          ProductDetailWidget().commonText(
                              text: "${CartFont().orderDetail}:",
                              fontSize: FontSizes.f14),
                          if (cartCtrl.cartModelList != null)
                            CartOrderDetailLayout(
                                cartModelList: cartCtrl.cartModelList),
                          const BorderLineLayout(),
                          if (cartCtrl.cartModelList != null)
                            DeliveryInstruction(
                                deliveryInstruction:
                                    cartCtrl.cartModelList!.deliveryInstruction)
                        ])),
                    if (cartCtrl.cartModelList != null)
                      CartBottomLayout(
                          desc: CartFont().viewDetail,
                          buttonName: CartFont().placeOrder,
                          totalAmount:
                              cartCtrl.cartModelList!.totalAmount.toString(),
                          onTap: () {
                            cartCtrl.appCtrl.isHeart = false;
                            cartCtrl.update();
                            Get.toNamed(routeName.deliveryDetail,
                                arguments: cartCtrl.cartModelList!.totalAmount);
                          })
                  ],
                )
              : const EmptyLayout());
    });
  }
}
