import 'package:multikart/config.dart';

class ShopPage extends StatelessWidget {
  final shopCtrl = Get.put(ShopController());

  ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShopController>(builder: (_) {
      return Scaffold(
        appBar: HomeProductAppBar(
          onTap: () => Get.back(),
          titleChild:  CommonAppBarTitle(
            title: "${shopCtrl.name} Collection",

            desc: "2050 Products",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                      child: SearchTextBox(
                        controller: shopCtrl.controller,
                      ),
                    ),
                    const FilterIconLayout().gestures(onTap: ()=>  Navigator.of(context).push(shopCtrl.createRoute()))
                  ],
                ),
              ),
              const Space(0, 20),
              GridView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: shopCtrl.homeShopPageList.length,
                itemBuilder: (context, index) {
                  return FindStyleListCard(
                    data: shopCtrl.homeShopPageList[index],
                    isFit: false,
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 0,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / (1.17)),
                ),
              ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15))
            ],
          ),
        ),
        bottomNavigationBar: CommonBottomNavigation(
          onTap: (val) => shopCtrl.bottomNavigationChange(val, context),
        ),
      );
    });
  }
}
