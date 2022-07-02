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
      return Scaffold(
        appBar: HomeProductAppBar(
          onTap: () => Get.back(),
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
                ),
              //inner category layout expandable
              const InnerCategoryLayout(),
              const Space(0, 10),
              const InnerCategoryProduct(),
              const Space(0, 10),
              const InnerCategoryBrands()
            ],
          ),
        ),
      );
    });
  }
}
