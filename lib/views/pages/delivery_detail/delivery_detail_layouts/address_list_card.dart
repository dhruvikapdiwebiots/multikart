import '../../../../config.dart';

class AddressListCard extends StatelessWidget {
  final AddressList? addressList;
  final int? index;
  final int? selectRadio;
  final GestureTapCallback? onTap;

  const AddressListCard(
      {Key? key, this.addressList, this.index, this.selectRadio, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRadio(

                      index: index,
                      selectRadio: selectRadio,
                      onTap: onTap),
                  const Space(10, 0),
                  AddressDetail(
                    addressList: addressList,
                    index: index,
                    selectRadio: selectRadio,
                  ),
                ],
              ),
              CustomButton(
                title: addressList!.addressType.toString(),
                width: AppScreenUtil().screenWidth(45),
                height: AppScreenUtil().screenHeight(15),
                fontSize: FontSizes.f8,
                radius: 2,
              )
            ],
          ),
        ],
      );
    });
  }
}
