import 'package:flutter/cupertino.dart';
import 'package:multikart/config.dart';


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
          leading: Icon(
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
              fontWeight: FontWeight.w700),
          actions: const [AppBarActionLayout()],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //image list
              const ImageListLayout(),
              ProductDetailWidget().commonText(
                  text: productCtrl.product.name.toString(), fontSize: 16),
              ProductDetailWidget()
                  .descriptionText(productCtrl.product.description.toString()),

              //rating layout
              const RatingLayout(),
              //price layout
              ProductPrice(product: productCtrl.product),
              ProductDetailWidget().inclusiveTax("inclusive of all taxes"),

              const BorderLineLayout(),
            ],
          ),
        ),
      );
    });
  }
}
