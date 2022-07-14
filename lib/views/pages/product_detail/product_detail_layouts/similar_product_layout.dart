import '../../../../config.dart';

class SimilarProductLayout extends StatelessWidget {
  const SimilarProductLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<ProductDetailController>(
      builder: (productCtrl) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
            productCtrl.similarList.asMap().entries.map((e) {
              return FindStyleListCard(
                data: productCtrl.similarList[e.key],
                isFit: true,
              ).paddingOnly(right: AppScreenUtil().screenWidth(10));
            }).toList(),
          ),
        ).marginOnly(
            left: AppScreenUtil().screenWidth(15),
            top: AppScreenUtil().screenHeight(10),
            bottom: AppScreenUtil().screenHeight(60));
      }
    );
  }
}
