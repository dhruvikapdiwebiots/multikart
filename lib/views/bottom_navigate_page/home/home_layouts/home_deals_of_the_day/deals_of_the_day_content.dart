import 'package:multikart/views/bottom_navigate_page/wishlist/widget_layouts/wishlist_action.dart';

import '../../../../../config.dart';

class DealsOfTheDayContent extends StatelessWidget {
  final HomeDealOfTheDayModel? data;
  final bool isVariantsShow;
  final bool isActionShow;

  const DealsOfTheDayContent({Key? key, this.data, this.isVariantsShow = false,this.isActionShow = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LatoFontStyle(
              text: data!.name,
              fontWeight: FontWeight.w700,
              color: appCtrl.appTheme.blackColor,
              fontSize: CommonTextFontSize.f12),
          const Space(0, 2),
          LatoFontStyle(
              text: data!.byWhom,
              fontWeight: FontWeight.w500,
              color: appCtrl.appTheme.contentColor,
              fontSize: CommonTextFontSize.f12),
          const Space(0, 5),
          Row(
            children: [
              LatoFontStyle(
                  text: '\$${data!.mrp}',
                  fontWeight: FontWeight.w400,
                  color: appCtrl.appTheme.blackColor,
                  fontSize: CommonTextFontSize.f12),
              const Space(8, 0),
              LatoFontStyle(
                  text: '\$${data!.totalPrice}',
                  fontWeight: FontWeight.w400,
                  color: appCtrl.appTheme.contentColor,
                  fontSize: CommonTextFontSize.f12,
                  textDecoration: TextDecoration.lineThrough),
              const Space(8, 0),
              LatoFontStyle(
                  text: data!.discount,
                  fontWeight: FontWeight.w400,
                  color: appCtrl.appTheme.primary,
                  fontSize: CommonTextFontSize.f12)
            ],
          ),
          const Space(0, 10),
          if (isVariantsShow) const Variants(),
          if (isActionShow)
            const WishListAction()
        ],
      );
    });
  }
}
