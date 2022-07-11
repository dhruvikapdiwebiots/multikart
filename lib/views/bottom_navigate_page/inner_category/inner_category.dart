import 'package:multikart/config.dart';

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
      return WillPopScope(
        onWillPop: ()async{
          innerCtrl.appCtrl.isSearch = false;
          innerCtrl.appCtrl.update();
          Get.back();
          return true;
        },
        child: Scaffold(
          appBar: HomeProductAppBar(
            onTap: () {
          innerCtrl.appCtrl.isSearch = false;
          innerCtrl.appCtrl.update();
              Get.back();},
            titleChild: CommonAppBarTitle(
              title: DashboardFont().categories,
              desc: innerCtrl.categoryModel != null
                  ? innerCtrl.categoryModel!.title
                  : "",
              isColumn: false,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                if (innerCtrl.categoryModel != null)
                  CategoryCardLayout(
                    categoryModel: innerCtrl.categoryModel,
                    index: innerCtrl.index,
                    isEven: true,
                    onTap: () => innerCtrl.goToShopPage(innerCtrl.categoryModel!.title.toString()),
                  ),
                //inner category layout expandable
                const InnerCategoryLayout(),
                const Space(0, 10),
                const CommonTrendingCategory(),
                const Space(0, 10),
                const InnerCategoryBrands()
              ],
            ),
          ),
        ),
      );
    });
  }
}
