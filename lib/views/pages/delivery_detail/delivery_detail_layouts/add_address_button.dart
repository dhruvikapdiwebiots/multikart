import '../../../../config.dart';

class AddAddressButton extends StatelessWidget {
  const AddAddressButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return CustomButton(
          onTap: ()=>Get.toNamed(routeName.addAddress),

          title: DeliveryDetailFont().addNewAddress,
          border: Border.all(
            color: appCtrl.appTheme.primary,
          ),
          fontWeight: FontWeight.normal,
          fontSize: CommonTextFontSize.f16,
          color: appCtrl.appTheme.whiteColor,
          fontColor: appCtrl.appTheme.primary,
        );
      }
    );
  }
}
