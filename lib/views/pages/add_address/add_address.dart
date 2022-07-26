import '../../../config.dart';

class AddAddress extends StatelessWidget {
  final addAddressCtrl = Get.put(AddAddressController());

  AddAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddAddressController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: const BackArrowButton(),
          backgroundColor: addAddressCtrl.appCtrl.appTheme.whiteColor,
          title: Text(AddAddressFont().addANewAddress),
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  FormTextBox(),
                  Space(0, 10),
                  BorderLineLayout(),
                  Space(0, 20),
                  AddressTypeLayout()
                ],
              ).marginOnly(bottom: AppScreenUtil().screenHeight(100)),
            ),
            BottomLayout(
              firstButtonText: DeliveryDetailFont().reset,
              secondButtonText: DeliveryDetailFont().addAddress,
            )
          ],
        ),
      );
    });
  }
}
