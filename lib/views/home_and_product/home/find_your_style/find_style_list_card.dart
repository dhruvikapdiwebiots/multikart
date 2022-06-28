import 'package:multikart/models/home_find_style_category.dart';

import '../../../../config.dart';

class FindStyleListCard extends StatelessWidget {
  final HomeFindStyleCategoryModel? data;

  const FindStyleListCard({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.circular(AppScreenUtil().borderRadius(5)),
            child: Card(
              elevation: 3,
              shadowColor: Colors.grey.withOpacity(.5),
              child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(AppScreenUtil().borderRadius(5)),
                  child: Image.asset(
                    data!.image.toString(),
                    fit: BoxFit.cover,
                    height: AppScreenUtil().screenHeight(200),
                  )),
            ),
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
          ),
          const Space(0, 5),
          Row(
            children: [
              LatoFontStyle(
                text: '\$${data!.totalPrice}',
                fontSize: HomeFontSize.textSizeSmall,
                fontWeight: FontWeight.normal,
                color: appCtrl.appTheme.blackColor,
              ),
              const Space(5, 0),
              LatoFontStyle(
                text: '\$${data!.mrp}',
                fontSize: HomeFontSize.textSizeSmall,
                fontWeight: FontWeight.normal,
                color: appCtrl.appTheme.contentColor,
                textDecoration: TextDecoration.lineThrough,
              ),
              const Space(5, 0),
              LatoFontStyle(
                text: '(${data!.discount} off)',
                fontSize: HomeFontSize.textSizeSmall,
                fontWeight: FontWeight.normal,
                color: appCtrl.appTheme.primary,
              ),
            ],
          )
        ],
      );
    });
  }
}
