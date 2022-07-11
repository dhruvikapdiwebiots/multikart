import 'package:multikart/config.dart';

class ShopPage extends StatelessWidget {
  final shopCtrl = Get.put(ShopController());

  ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShopController>(builder: (_) {
      return WillPopScope(
        onWillPop: ()async{
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
            titleChild:  CommonAppBarTitle(
              title: "${shopCtrl.name} ${ShopFont().collection}",

              desc: "2050 ${ShopFont().products}",
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
        ),
      );
    });
  }
}
