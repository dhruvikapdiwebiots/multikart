import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

import '../../../config.dart';

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
                  text: productCtrl.product.name.toString(),
                  fontSize: CommonTextFontSize.textSizeMedium),
              ProductDetailWidget()
                  .descriptionText(productCtrl.product.description.toString()),

              //rating layout
              const RatingLayout(),
              //price layout
              ProductPrice(product: productCtrl.product),
              ProductDetailWidget().inclusiveTax("inclusive of all taxes"),
              const BorderLineLayout(),
              ProductSizeLayout(product: productCtrl.product),
              ProductDetailWidget().commonText(
                  text: "Select Color:",
                  fontSize: CommonTextFontSize.textSizeSMedium),

              ProductColorLayout(product: productCtrl.product),
              ProductDetailWidget().commonText(
                  text: "Quantity:",
                  fontSize: CommonTextFontSize.textSizeSMedium),

              const QuantityIncDec(),
              const BorderLineLayout(),
              ProductDetailWidget().commonText(
                  text: "Offers for You",
                  fontSize: CommonTextFontSize.textSizeSMedium),
              ProductDetailWidget().commonText(
                  text: productCtrl.product.offer!.title ?? '',
                  fontSize: CommonTextFontSize.textSizeSMedium),
              ProductDetailWidget()
                  .descriptionText(productCtrl.product.offer!.desc ?? ''),
              ProductOffer(
                text: productCtrl.product.offer!.code ?? '',
              ).marginOnly(bottom: AppScreenUtil().screenHeight(10)),
              const BorderLineLayout(),
              PolicyLayout(
                text: productCtrl.product.policy ?? '',
              ).marginOnly(bottom: AppScreenUtil().screenHeight(10)),
              const BorderLineLayout(),

              const DetailLayout(),
              const BorderLineLayout(),
              ProductDetailWidget().commonText(
                  text: "Customer Reviews (${productCtrl.product.totalReview})",
                  fontSize: CommonTextFontSize.textSizeSMedium),
              ...productCtrl.product.reviews!.map((e) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductDetailWidget().commonText(
                        text: e.name,
                        fontSize: CommonTextFontSize.textSizeSMedium),
                  ],
                );
              }).toList()
            ],
          ),
        ),
      );
    });
  }
}
