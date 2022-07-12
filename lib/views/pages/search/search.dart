import 'package:multikart/config.dart';

class Search extends StatelessWidget {
  final searchCtrl = Get.put(SearchController());

  Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(builder: (_) {
      return Scaffold(
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SearchWidget().searchAndBackArrow(searchCtrl.controller),
            //recent search list layout
            SearchWidget().commonText(SearchFont().recentSearch),
            ...searchCtrl.recentSearchList.map((e) {
              return RecentSearchCard(data: e);
            }).toList(),
            SearchWidget().commonText(SearchFont().recommended),
            //recommended list layout
            const RecommendedLayout(),
            SearchWidget().commonText(SearchFont().trendingCategory),
            //trending category layout
            const CommonTrendingCategory(),
            SearchWidget().commonText(SearchFont().topBrandForMultikart),

            //brand list layout
            const CommonBrandLayout()
                .marginSymmetric(horizontal: AppScreenUtil().screenWidth(15))
          ]),
        ),
      );
    });
  }
}
