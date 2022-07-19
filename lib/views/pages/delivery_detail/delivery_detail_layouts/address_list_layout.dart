import 'package:multikart/config.dart';

class AddressListLayout extends StatelessWidget {
  const AddressListLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeliveryDetailController>(
      builder: (deliveryDetailCtrl) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...deliveryDetailCtrl.deliveryDetail!.addressList!
                .asMap()
                .entries
                .map((e) {
              return DeliveryDetailWidgets()
                  .deliveryAddressLayout(
                  child: AddressListCard(
                      addressList: e.value,
                      index: e.key,
                      selectRadio: deliveryDetailCtrl.selectRadio,
                    onTap:  ()  => deliveryDetailCtrl.selectAddress(e.value, e.key),
                  ),
                  index: e.key,
                  selectRadio: deliveryDetailCtrl.selectRadio)
                  .gestures(
                  onTap: () =>
                      deliveryDetailCtrl.selectAddress(e.value, e.key));
            }).toList()
          ],
        ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15));
      }
    );
  }
}
