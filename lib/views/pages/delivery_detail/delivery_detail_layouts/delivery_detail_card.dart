import '../../../../config.dart';

class DeliveryDetailCard extends StatelessWidget {
  final ExpectedDelivery? expectedDelivery;
  const DeliveryDetailCard({Key? key,this.expectedDelivery}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Container(
          margin:
          EdgeInsets.only(bottom: AppScreenUtil().screenHeight(15)),
          padding: EdgeInsets.symmetric(
              horizontal: AppScreenUtil().screenWidth(15),
              vertical: AppScreenUtil().screenHeight(15)),
          decoration: BoxDecoration(
              color: appCtrl.appTheme.greyLight25,
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                    AppScreenUtil().borderRadius(5)),
                child: FadeInImageLayout(
                  image: expectedDelivery!.image,
                  height: AppScreenUtil().screenHeight(70),
                  width: AppScreenUtil().screenWidth(80),
                  fit: BoxFit.cover
                )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LatoFontStyle(
                    text: expectedDelivery!.name,
                    fontWeight: FontWeight.w600,
                    fontSize: CommonTextFontSize.f14,
                    color: appCtrl.appTheme.contentColor
                  ),
                  Row(
                    children: [
                      LatoFontStyle(
                        text: "Delivery by",
                        fontWeight: FontWeight.w700,
                        fontSize: CommonTextFontSize.f13,
                        color: appCtrl.appTheme.blackColor
                      ),
                      const Space(5,0),
                      LatoFontStyle(
                        text: expectedDelivery!.date,
                        fontWeight: FontWeight.w700,
                        fontSize: CommonTextFontSize.f13,
                        color: appCtrl.appTheme.greenColor
                      )
                    ],
                  )
                ],
              ).marginSymmetric(
                  horizontal: AppScreenUtil().screenWidth(15))
            ]
          )
        );
      }
    );
  }
}
