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
      return Scaffold(
        body: categoryCtrl.appCtrl.isShimmer
            ? Shimmer.fromColors(
                baseColor: categoryCtrl.appCtrl.appTheme.greyLight25,
                highlightColor: categoryCtrl.appCtrl.appTheme.gray,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //category list
                      ...categoryCtrl.categoryList.asMap().entries.map((e) {
                        return CommonShimmer(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          borderRadius: 5,
                          color: categoryCtrl.appCtrl.appTheme.lightGray.withOpacity(.3),
                          borderColor: categoryCtrl.appCtrl.appTheme.lightGray.withOpacity(.3),
                        ).marginOnly(bottom: AppScreenUtil().screenHeight(10));
                      }).toList()
                    ],
                  ),
                )).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15))
            : SingleChildScrollView(
                child: Column(
                  children: [
                    //category list
                    ...categoryCtrl.categoryList.asMap().entries.map((e) {
                      return CategoryCardLayout(
                        categoryModel: categoryCtrl.categoryList[e.key],
                        index: e.key,
                        isEven: e.key.isEven,
                        onTap: () {
                          var data = {'data': e.value, 'index': e.key};

                          Get.toNamed(routeName.innerCategory, arguments: data);
                        },
                      );
                    }).toList()
                  ],
                ),
              ),
      );
    });
  }
}
