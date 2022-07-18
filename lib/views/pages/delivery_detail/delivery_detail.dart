import 'package:multikart/controllers/pages_controller/delivery_detail_controller.dart';

import '../../../config.dart';

class DeliveryDetail extends StatelessWidget {
  final deliveryDetailCtrl = Get.put(DeliveryDetailController());

  DeliveryDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeliveryDetailController>(builder: (_) {
      return Scaffold(
        appBar: HomeProductAppBar(
          onTap: () {
            Get.back();
          },
          titleChild: CommonAppBarTitle(
            title: "Delivery Details",
            desc: "Step 2 of 3",
          ),
        ),
      );
    });
  }
}
