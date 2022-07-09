import 'package:flutter/cupertino.dart';
import 'package:multikart/config.dart';
import 'package:multikart/controllers/pages_controller/search_controller.dart';

class Search extends StatelessWidget {
  final searchCtrl = Get.put(SearchController());

  Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(builder: (_) {
      return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(Icons.arrow_back_rounded),
                Expanded(child: SearchTextBox())
              ],
            ).marginOnly(
                left: AppScreenUtil().screenWidth(15),
                top: AppScreenUtil().screenHeight(40),
                bottom: AppScreenUtil().screenHeight(30)),
            LatoFontStyle(
              text: "Recent Search",
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ).marginOnly(
                left: AppScreenUtil().screenWidth(15),
                bottom: AppScreenUtil().screenHeight(20)),
            ...searchCtrl.recentSearchList.map((e) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(svgAssets.clock),
                      Space(10, 0),
                      LatoFontStyle(
                        text: e['title'],
                        fontSize: CommonTextFontSize.textSizeSMedium,
                        color: searchCtrl.appCtrl.appTheme.contentColor,
                      ),
                    ],
                  ),
                  Icon(
                    CupertinoIcons.multiply,
                    size: AppScreenUtil().size(18),
                    color: searchCtrl.appCtrl.appTheme.contentColor,
                  )
                ],
              ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15),vertical: AppScreenUtil().screenHeight(5));
            }).toList()
          ],
        ),
      );
    });
  }
}
