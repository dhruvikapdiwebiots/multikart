import '../../../../config.dart';

class AddressDetail extends StatelessWidget {
  final AddressList? addressList;
  final int? index;
  final int? selectRadio;

  const AddressDetail(
      {Key? key, this.selectRadio, this.index, this.addressList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        LatoFontStyle(
            text: addressList!.name,
            fontWeight: FontWeight.w600,
            fontSize: CommonTextFontSize.f14,
            color: appCtrl.appTheme.blackColor),
        const Space(0, 5),
        DeliveryDetailWidgets().addressCommonText(addressList!.address),
        Row(children: [
          DeliveryDetailWidgets().addressCommonText(addressList!.locality),
          DeliveryDetailWidgets().addressCommonText(addressList!.state)
        ]),
        Row(children: [
          DeliveryDetailWidgets().addressCommonText(addressList!.city),
          DeliveryDetailWidgets().addressCommonText(addressList!.phone),
          LatoFontStyle(
              text: addressList!.city,
              fontWeight: FontWeight.normal,
              fontSize: CommonTextFontSize.f14,
              color: appCtrl.appTheme.contentColor)
        ]),
        const Space(0, 10),
        Row(children: [
          DeliveryDetailWidgets().phoneCommonText(DeliveryDetailFont().phoneNo),
          DeliveryDetailWidgets().phoneCommonText(addressList!.phone)
        ]),
        const Space(0, 10),
        RemoveEditLayout(
          index: index,
          selectRadio: selectRadio,
        )
      ]);
    });
  }
}
