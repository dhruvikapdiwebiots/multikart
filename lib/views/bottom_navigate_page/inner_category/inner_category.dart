import 'package:multikart/config.dart';
import 'package:multikart/shimmer_layouts/category_shimmer/inner_category_shimmer.dart';

class InnerCategory extends StatefulWidget {
  const InnerCategory({Key? key}) : super(key: key);

  @override
  State<InnerCategory> createState() => _InnerCategoryState();
}

class _InnerCategoryState extends State<InnerCategory> {
  var innerCtrl = Get.put(InnerCategoryController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InnerCategoryController>(builder: (_) {
      return Directionality(
        textDirection: innerCtrl.appCtrl.isRTL ||
            innerCtrl.appCtrl.languageVal == "ar"
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: WillPopScope(
          onWillPop: () async {
            innerCtrl.appCtrl.isSearch = false;
            innerCtrl.appCtrl.update();
            Get.back();
            return true;
          },
          child: Scaffold(
              //app bar layout
              appBar: HomeProductAppBar(
                onTap: () {
                  innerCtrl.appCtrl.isSearch = false;
                  innerCtrl.appCtrl.update();
                  Get.back();
                },
                titleChild: CommonAppBarTitle(
                  title: DashboardFont().categories,
                  desc: innerCtrl.categoryModel != null
                      ? innerCtrl.categoryModel!.title
                      : "",
                  isColumn: false,
                ),
              ),
              body: innerCtrl.appCtrl.isShimmer ? const InnerCategoryShimmer(): SingleChildScrollView(
                child: Column(children: [
                  //category info. layout
                  if (innerCtrl.categoryModel != null)
                    CategoryCardLayout(
                      categoryModel: innerCtrl.categoryModel,
                      index: innerCtrl.index,
                      isEven: true,
                      onTap: () async{
                        innerCtrl.appCtrl.isShimmer = true;
                        innerCtrl.appCtrl.update();
                        innerCtrl.goToShopPage(
                            innerCtrl.categoryModel!.title.toString());
                        await Future.delayed(Durations.s1);
                        innerCtrl.appCtrl.isShimmer = false;
                        innerCtrl.appCtrl.update();
                        Get.forceAppUpdate();
                      },
                    ),
                  //inner category layout expandable
                  const InnerCategoryLayout(),
                  const Space(0, 10),

                  //trending category layout
                  const CommonTrendingCategory(),
                  const Space(0, 10),

                  //brands layout
                  const InnerCategoryBrands()
                ]),
              )),
        ),
      );
    });
  }
}
