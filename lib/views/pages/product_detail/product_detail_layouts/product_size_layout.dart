import 'package:multikart/config.dart';

class ProductSizeLayout extends StatelessWidget {
  final Product? product;

  const ProductSizeLayout({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProductDetailWidget()
                  .commonText(text: "Select Size:", fontSize: 14),
              ProductDetailWidget().sizeChart("Size Chart"),
            ],
          ),
          if(product!.size != null)
          SingleChildScrollView(
            child:  Row(
              children: [
                ...product!.size!.asMap().entries.map((e) {
                  return SizeCard(
                    sizeModel: e.value,
                  );
                }).toList()
              ],
            ),
          ).marginOnly(
              left: AppScreenUtil().screenWidth(15),
              top: AppScreenUtil().screenHeight(15))
        ],
      );
    });
  }
}
