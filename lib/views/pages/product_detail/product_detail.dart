import 'package:flutter/cupertino.dart';
import 'package:multikart/config.dart';
import 'package:multikart/controllers/pages_controller/product_detail_controller.dart';

class ProductDetail extends StatelessWidget {
  final productCtrl = Get.put(ProductDetailController());

  ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailController>(builder: (_) {
      return Scaffold(
        backgroundColor: productCtrl.appCtrl.appTheme.whiteColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: productCtrl.appCtrl.appTheme.whiteColor,
          automaticallyImplyLeading: false,
          leading:Icon(
            CupertinoIcons.arrow_left,
            size: AppScreenUtil().size(25),
            color: productCtrl.appCtrl.appTheme.blackColor,
          ).gestures(onTap: () {
            productCtrl.appCtrl.goToHome();
            Get.back();
          }),
          title: LatoFontStyle(
            text: productCtrl.product.title ?? "",
            fontSize: CommonTextFontSize.textSizeMedium,
            fontWeight: FontWeight.w700,
          ),
          actions: const [AppBarActionLayout()],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               CarouselSlider.builder(
                options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: .90,
                    viewportFraction: 0.9,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    onPageChanged: (index, reason) {
                      productCtrl.current = index;
                      productCtrl.update();
                    }),
                itemCount: productCtrl.imagesList != null ? productCtrl.imagesList.length :0,
                itemBuilder:
                    (BuildContext context, int index, int pageViewIndex) {
                  return productCtrl.imagesList != null
                      ? Image.asset(productCtrl.imagesList[index].image.toString(),fit: BoxFit.cover,).marginOnly(right: AppScreenUtil().screenWidth(5))
                      : Container();
                },
              ),
            ],
          ),
        ),
      );
    });
  }
}
