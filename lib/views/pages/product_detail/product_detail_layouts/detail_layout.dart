
import '../../../../config.dart';

class DetailLayout extends StatelessWidget {
  const DetailLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailController>(
      builder: (productCtrl) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...productCtrl.product.detail!.map((e) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductDetailWidget().commonText(
                      text: e.title,
                      fontSize: CommonTextFontSize.textSizeSMedium),
                  LatoFontStyle(
                    text: e.description,
                    fontSize: CommonTextFontSize.textSizeSMedium,
                    fontWeight: FontWeight.normal,
                    color: productCtrl.appCtrl.appTheme.contentColor,
                  ).marginSymmetric(
                      horizontal: AppScreenUtil().screenWidth(15),
                      vertical: AppScreenUtil().screenHeight(5))
                ],
              );
            }).toList()
          ],
        ).marginOnly(bottom: AppScreenUtil().screenHeight(20));
      }
    );
  }
}
