import '../../../../config.dart';

class ProductPrice extends StatelessWidget {
  final Product? product;
  const ProductPrice({Key? key,this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<AppController>(
      builder: (appCtrl) {
        return  PriceLayout(
            totalPrice: product!.discountPrice.toString(),
            mrp: product!.price.toString(),
            discount: product!.discount,
            fontSize: FontSizes.f16,
            isDiscountShow: true).marginOnly(
            left: AppScreenUtil().screenWidth(10),);
      }
    );
  }
}
