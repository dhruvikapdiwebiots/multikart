import 'package:multikart/config.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InnerCategoryController>(builder: (_) {
      return Scaffold(
        appBar: HomeProductAppBar(
          onTap: () => Get.back(),
          titleChild: const CommonAppBarTitle(
            title: "Women Collection",
            desc:  "2050 Products",
          ),
        ),
        body: Column(),
      );
    });
  }
}
