import 'package:multikart/views/pages/add_address/add_address_layouts/make_default_address.dart';

import '../../../../config.dart';

class AddressTypeLayout extends StatelessWidget {
  const AddressTypeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddAddressController>(builder: (addAddressCtrl) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LatoFontStyle(
            text: DeliveryDetailFont().typeOfAddress,
            fontSize: FontSizes.f16,
            fontWeight: FontWeight.w600,
          ),
          const Space(0, 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ...addAddressCtrl.addressType.asMap().entries.map((e) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomRadio(
                        index: e.key,
                        selectRadio: addAddressCtrl.selectRadio,
                        onTap: () =>
                            addAddressCtrl.selectAddressType(e.value, e.key)),
                    const Space(10, 0),
                    LatoFontStyle(
                      text: e.value['title'],
                      color: addAddressCtrl.appCtrl.appTheme.contentColor,
                      fontWeight: FontWeight.w600,
                      fontSize: FontSizes.f16,
                    )
                  ],
                ).marginOnly(right: AppScreenUtil().screenWidth(20));
              }).toList()
            ],
          ),
          const MakeDefaultAddress()
        ],
      ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15));
    });
  }
}
