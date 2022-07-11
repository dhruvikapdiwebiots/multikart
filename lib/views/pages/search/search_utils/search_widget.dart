import 'package:multikart/config.dart';

class SearchWidget {
  // search and back arrow
  Widget searchAndBackArrow(controller) {
    return Row(
      children: [
        const Icon(Icons.arrow_back_rounded).gestures(onTap: () => Get.back()),
         Expanded(child: SearchTextBox(controller: controller,))
      ],
    ).marginOnly(
        left: AppScreenUtil().screenWidth(15),
        top: AppScreenUtil().screenHeight(40),
        bottom: AppScreenUtil().screenHeight(30));
  }

  //common text
  Widget commonText(text){
    return  LatoFontStyle(
      text: text,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ).marginOnly(
        left: AppScreenUtil().screenWidth(15),
        bottom: AppScreenUtil().screenHeight(20));
  }
}
