import 'package:multikart/views/pages/product_detail/product_detail_utils/product_detail_constant.dart';

import '../../../../config.dart';

class ProductBody extends StatelessWidget {
  const ProductBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailController>(builder: (productCtrl) {
      return SingleChildScrollView(
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
            ProductDetailWidget().inclusiveTax(ProductDetailFont().inclusiveOfAllTaxes),
            const BorderLineLayout(),
            ProductSizeLayout(product: productCtrl.product),
            ProductDetailWidget().commonText(
                text: ProductDetailFont().selectColor,
                fontSize: CommonTextFontSize.textSizeSMedium),

            ProductColorLayout(product: productCtrl.product),
            ProductDetailWidget().commonText(
                text: ProductDetailFont().quantity,
                fontSize: CommonTextFontSize.textSizeSMedium),

            const QuantityIncDec(),
            const BorderLineLayout(),
            productCtrl.product.offer != null
                ? OfferByYou(
                    offer: productCtrl.product.offer,
                  )
                : Container(),
            const BorderLineLayout(),
            PolicyLayout(
              text: productCtrl.product.policy ?? '',
            ).marginOnly(bottom: AppScreenUtil().screenHeight(10)),
            const BorderLineLayout(),

            const DetailLayout(),
            const BorderLineLayout(),
            const ProductReviewLayout(),
            const BorderLineLayout(),
            if (productCtrl.product.deliverOfferModel != null)
              DeliveryOfferLayout(
                deliverOfferModel: productCtrl.product.deliverOfferModel,
              ),
            const BorderLineLayout(),
            ProductDetailWidget().commonText(
                text: ProductDetailFont().similarProducts,
                fontSize: CommonTextFontSize.textSizeSMedium),
            const SimilarProductLayout(),
          ],
        ),
      );
    });
  }
}
