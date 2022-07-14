import '../../../../config.dart';

class ProductOffer extends StatelessWidget {
  final String? text;
  const ProductOffer({Key? key,this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  imageAssets.coupenCode,
                  width: AppScreenUtil().screenWidth(150),
                ),
                LatoFontStyle(text:text ,fontSize: CommonTextFontSize.textSizeSmall,color: appCtrl.appTheme.blackColor,)
              ],
            ),
            ProductDetailWidget().descriptionText("Tap to copy"),
          ],
        ).marginSymmetric(
            horizontal: AppScreenUtil().screenWidth(15),
            vertical: AppScreenUtil().screenHeight(10));
      }
    );
  }
}