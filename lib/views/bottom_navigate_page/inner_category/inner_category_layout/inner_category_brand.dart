import '../../../../../config.dart';

class InnerCategoryBrands extends StatelessWidget {
  const InnerCategoryBrands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InnerCategoryController>(builder: (innerCtrl) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LatoFontStyle(
            text: HomeFont().biggestDeal,
            fontSize: HomeFontSize.textSizeMedium,
            fontWeight: FontWeight.normal,
            color: innerCtrl.appCtrl.appTheme.blackColor,
          ),
          GridView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: innerCtrl.innerCategoryBrandList.length,
            itemBuilder: (context, index) {
              return BrandCard(
                data: innerCtrl.innerCategoryBrandList[index],
                index: index,
                lastIndex: innerCtrl.innerCategoryBrandList.length - 1,
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 0,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / (2.8)),
            ),
          )
        ],
      ).marginSymmetric(
          vertical: AppScreenUtil().screenHeight(40),
          horizontal: AppScreenUtil().screenHeight(15));
    });
  }
}
