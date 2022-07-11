import 'package:flutter/cupertino.dart';
import 'package:multikart/config.dart';
import 'package:multikart/controllers/pages_controller/search_controller.dart';
import 'package:multikart/views/pages/search/search_utils/search_constant.dart';
import 'package:multikart/views/pages/search/search_utils/search_widget.dart';

class Search extends StatelessWidget {
  final searchCtrl = Get.put(SearchController());

  Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(builder: (_) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchWidget().searchAndBackArrow(searchCtrl.controller),
              SearchWidget().commonText(SearchFont().recentSearch),
              ...searchCtrl.recentSearchList.map((e) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(svgAssets.clock),
                        const Space(10, 0),
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
                ).marginSymmetric(
                    horizontal: AppScreenUtil().screenWidth(15),
                    vertical: AppScreenUtil().screenHeight(5));
              }).toList(),
              SearchWidget().commonText(SearchFont().recommended),
              GridView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: searchCtrl.recommendedList.length,
                itemBuilder: (context, index) {
                  return GridviewThreeLayout(
                    data: searchCtrl.recommendedList[index],
                    index: index,
                    onTap: () {
                      searchCtrl.recommendedList[index]['isSelected'] =
                          !searchCtrl.recommendedList[index]['isSelected'];
                      searchCtrl.update();
                    },
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 0,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / (4.5)),
                ),
              ).marginSymmetric(
                  horizontal: AppScreenUtil().screenWidth(15),
                  vertical: AppScreenUtil().screenHeight(5)),
              SearchWidget().commonText(SearchFont().trendingCategory),

              const CommonTrendingCategory(),
              SearchWidget().commonText(SearchFont().topBrandForMultikart),
              const CommonBrandLayout().marginSymmetric(
                horizontal: AppScreenUtil().screenWidth(15),
              ),
            ],
          ),
        ),
      );
    });
  }
}
