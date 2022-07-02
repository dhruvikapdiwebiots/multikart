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
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...categoryCtrl.categoryList.asMap().entries.map((e) {
                return CategoryCardLayout(
                  categoryModel: categoryCtrl.categoryList[e.key],
                  index: e.key,
                  isEven: e.key.isEven,
                  onTap: (){
                    var data = {
                      'data':e.value,
                      'index':e.key
                    };
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
