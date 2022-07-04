import '../../../../../config.dart';

class FindStyleListCard extends StatelessWidget {
  final HomeFindStyleCategoryModel? data;
  final bool isDiscountShow, isFit;

  const FindStyleListCard(
      {Key? key, this.data, this.isDiscountShow = true, this.isFit = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  ProductImage(
                    image: data!.image.toString(),
                    isFit: isFit,
                  ),
                  LinkHeartIcon(
                    isLiked: data!.isFav,
                  ).paddingOnly(
                      top: AppScreenUtil().screenHeight(15),
                      right: AppScreenUtil().screenWidth(15))
                ],
              ),
              if (data!.isNew) const NewLayout()
            ],
          ),
          const Space(0, 5),
          Rating(
            val: double.parse(data!.rating.toString()),
            onRatingUpdate: (val) {},
          ),
          LatoFontStyle(
            text: data!.name,
            fontSize: HomeFontSize.textSizeSMedium,
            fontWeight: FontWeight.normal,
            color: appCtrl.appTheme.blackColor,
          ).paddingOnly(left: AppScreenUtil().screenWidth(5)),
          const Space(0, 5),
          PriceLayout(
            totalPrice: data!.totalPrice,
            mrp: data!.mrp,
            discount: data!.discount,
            isDiscountShow: isDiscountShow,
          ),
        ],
      );
    });
  }
}
