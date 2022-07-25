import 'package:multikart/config.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({Key? key}) : super(key: key);

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  final orderDetailCtrl = Get.put(OrderDetailController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderDetailController>(builder: (_) {
      return Scaffold(
        body: NestedSilverCustomAppBar(
          bodyLayout: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                const OrderProduct(),
                const Space(0, 30),
                const OrderTimeLineProcess(),
                const OrderRating(),
                const Space(0, 20),
                const BorderLineLayout(),
                const Space(0, 30),
                OrderDetailWidget()
                    .commonText(OrderDetailFont().shippingDetail),
                const Space(0, 10),
                Divider(color: orderDetailCtrl.appCtrl.appTheme.gray,indent: 15,endIndent: 15),
                const Space(0, 10),
                AddressDetail(
                  addressList: deliveryDetailArray.addressList![0],
                  index: 0,
                  selectRadio: 0,
                  isShow: false,
                ).marginSymmetric(horizontal: Insets.i15),
                const Space(0, 20),
                const BorderLineLayout(),
                const Space(0, 20),
                OrderDetailWidget().commonText(OrderDetailFont().priceDetails),
                const Space(0, 10),
                Divider(color: orderDetailCtrl.appCtrl.appTheme.gray,indent: 15,endIndent: 15),
                const Space(0, 10),
                CartOrderDetailLayout(
                  cartModelList: cartList,
                  isDeliveryShow: false,
                  isApplyText: false,
                ),
                const Space(0, 20),
                OrderDetailWidget()
                    .buttonLayout(OrderDetailFont().downloadInvoice),
                const Space(0, 50),
              ])),
        ),
      );
    });
  }
}
