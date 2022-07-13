import 'package:flutter/cupertino.dart';

import '../../../../config.dart';

class PolicyLayout extends StatelessWidget {
  final String? text;
  const PolicyLayout({Key? key,this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductDetailWidget().commonText(
                text: "Return & Exchange Policy",
                fontSize: CommonTextFontSize.textSizeSMedium),
            LatoFontStyle(
              text: text,
              fontWeight: FontWeight.w600,
              fontSize: CommonTextFontSize.textSizeSMedium,
              color: appCtrl.appTheme.contentColor,
              overflow: TextOverflow.clip,
              textAlign: TextAlign.start,
            ).marginSymmetric(
                horizontal: AppScreenUtil().screenWidth(15),
                vertical: AppScreenUtil().screenHeight(15))
          ],
        );
      }
    );
  }
}
