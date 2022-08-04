import '../../../config.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final categoryCtrl = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(builder: (_) {
      return Directionality(
        textDirection: categoryCtrl.appCtrl.isRTL ||
            categoryCtrl.appCtrl.languageVal == "ar"
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: Scaffold(
          body: categoryCtrl.appCtrl.isShimmer
              ? const CategoryShimmer()
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      //category list
                      ...categoryCtrl.categoryList.asMap().entries.map((e) {
                        return CategoryCardLayout(
                          categoryModel: categoryCtrl.categoryList[e.key],
                          index: e.key,
                          isEven: e.key.isEven,
                          onTap: ()async {
                            categoryCtrl.appCtrl.isShimmer = true;
                            categoryCtrl.appCtrl.update();
                            var data = {'data': e.value, 'index': e.key};

                            Get.toNamed(routeName.innerCategory, arguments: data);
                            await Future.delayed(Durations.s1);
                            categoryCtrl.appCtrl.isShimmer = false;
                            categoryCtrl.appCtrl.update();
                            Get.forceAppUpdate();
                          },
                        );
                      }).toList()
                    ],
                  ),
                ),
        ),
      );
    });
  }
}
