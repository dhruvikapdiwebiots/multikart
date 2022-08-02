import 'package:multikart/config.dart';
import 'package:multikart/shimmer_layouts/category_shimmer/shop_shimmer.dart';
import 'package:multikart/views/pages/shop/shop_list_layout.dart';

class ShopPage extends StatelessWidget {
  final shopCtrl = Get.put(ShopController());

  ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShopController>(builder: (_) {
      return WillPopScope(
        onWillPop: () async {
          shopCtrl.appCtrl.isNotification = false;
          shopCtrl.appCtrl.update();
          Get.back();
          return true;
        },
        child: Scaffold(
          appBar: HomeProductAppBar(
            onTap: () {
              shopCtrl.appCtrl.isNotification = false;
              shopCtrl.appCtrl.update();
              Get.back();
            },
            titleChild: CommonAppBarTitle(
              title: "${shopCtrl.name} ${ShopFont().collection}",
              desc: "2050 ${ShopFont().products}",
            ),
          ),
          body: SingleChildScrollView(
              child: Column(children: [
            IntrinsicHeight(
              child: Row(
                children: [
                  //search text box layout
                  Expanded(
                    child: SearchTextBox(
                      controller: shopCtrl.controller,
                      suffixIcon: SearchWidget().suffixIcon(),
                      prefixIcon: SearchWidget().prefixIcon(),
                    ),
                  ),
                  //filter icon layout
                  const FilterIconLayout().gestures(
                      onTap: () =>
                          Navigator.of(context).push(shopCtrl.createRoute()))
                ],
              ),
            ),
            const Space(0, 20),
            //shop list layout
            shopCtrl.appCtrl.isShimmer
                ? const ShopShimmer()
                : const ShopListLayout()
          ])),
          bottomNavigationBar: CommonBottomNavigation(
              onTap: (val) => shopCtrl.bottomNavigationChange(val, context)),
        ),
      );
    });
  }
}
