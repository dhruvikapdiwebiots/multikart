import '../../../../config.dart';

class OrderHistoryWidget {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  //search text box and filter
  Widget searchTextBoxAndFilter(
      {TextEditingController? controller, GestureTapCallback? onTap}) {
    return IntrinsicHeight(
        child: Row(children: [
      Expanded(
          child: SearchTextBox(
              controller: controller,
              suffixIcon: SearchWidget().suffixIcon(),
              prefixIcon: SearchWidget().prefixIcon())),
      const FilterIconLayout().gestures(onTap: onTap)
    ]));
  }

  //image layout
  Widget imageLayout(image) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(AppScreenUtil().borderRadius(5)),
        child: FadeInImageLayout(
            image: image,
            height: AppScreenUtil().screenHeight(65),
            width: AppScreenUtil().screenWidth(70),
            fit: BoxFit.cover));
  }

  //common text
  Widget commonText(text) {
    return LatoFontStyle(
        text: text,
        fontWeight: FontWeight.w700,
        fontSize: FontSizes.f13,
        color: appCtrl.appTheme.contentColor);
  }

  //view detail text
  Widget viewDetailText(status, deliveryStatus) {
    return LatoFontStyle(
        text: OrderHistoryFont().viewDetails,
        fontWeight: FontWeight.w600,
        fontSize: FontSizes.f13,
        color: (status == "OnGoing".tr && deliveryStatus == "Dispatched".tr ||
                status == "चल रहे".tr && deliveryStatus == "भेजा गया".tr ||
                status == "جاري التنفيذ".tr && deliveryStatus == "أرسل".tr ||
                status == "전진".tr && deliveryStatus == "파견".tr)
            ? appCtrl.appTheme.primary
            : appCtrl.appTheme.greenColor);
  }

  //status layout
  Widget statusLayout(title) {
    return CustomButton(
        padding: 0,
        margin: 0,
        height: AppScreenUtil().screenHeight(20),
        width: AppScreenUtil().screenWidth(75),
        title: title,
        color: appCtrl.appTheme.greyLight25,
        fontSize: FontSizes.f8,
        fontColor: appCtrl.appTheme.blackColor,
        fontWeight: FontWeight.w700);
  }
}
