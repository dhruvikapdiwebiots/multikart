
import '../../../../config.dart';

class OrderSuccessWidget{
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  //common detail text
  Widget commonDetailText(title,val){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LatoFontStyle(
            text: title,
            fontSize: FontSizes.f14,
            color: appCtrl.appTheme.blackColor,
            fontWeight: FontWeight.w700),
        const Space(0, 5),
        LatoFontStyle(
          text: val,
          fontSize: FontSizes.f14,
          color: appCtrl.appTheme.contentColor,
          overflow: TextOverflow.clip,
        )
      ],
    );
  }
}