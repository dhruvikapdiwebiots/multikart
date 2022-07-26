import 'package:multikart/config.dart';
import 'package:multikart/controllers/pages_controller/save_address_controller.dart';
import 'package:multikart/views/pages/save_address/save_address_list.dart';

class SaveAddress extends StatelessWidget {
  final saveAddressCtrl = Get.put(SaveAddressController());
   SaveAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SaveAddressController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: const BackArrowButton(),
            backgroundColor: saveAddressCtrl.appCtrl.appTheme.whiteColor,
            title: Text(CommonTextFont().savedAddress),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                //address list layout
                if (saveAddressCtrl.deliveryDetail != null)
                   const SaveAddressList(),
                //add new address button layout
                const AddAddressButton(),
              ],
            ),
          ),
        );
      }
    );
  }
}
