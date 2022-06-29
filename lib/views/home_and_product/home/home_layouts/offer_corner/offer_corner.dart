import 'package:multikart/config.dart';

class OfferCorner extends StatelessWidget {
  const OfferCorner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeCtrl) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LatoFontStyle(
            text: "Offer Corner",
            fontSize: HomeFontSize.textSizeSMedium,
            fontWeight: FontWeight.w700,
            color: homeCtrl.appCtrl.appTheme.blackColor,
          ),
          const Space(0, 10),
          GridView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: homeCtrl.offerCornerList.length,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.center,
                height: AppScreenUtil().screenHeight(10),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppScreenUtil().borderRadius(3)),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(imageAssets.offerCornerBG),
                    LatoFontStyle(
                      text: homeCtrl.offerCornerList[index]['title'],
                      color: homeCtrl.appCtrl.appTheme.blackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing:15,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / (4.5)),
            ),
          )
        ],
      ).paddingSymmetric(vertical: AppScreenUtil().screenHeight(10),horizontal: AppScreenUtil().screenWidth(15));
    });
  }
}
