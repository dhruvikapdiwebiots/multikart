import '../../../../config.dart';

class DeliveryOfferLayout extends StatelessWidget {
  final DeliverOfferModel? deliverOfferModel;

  const DeliveryOfferLayout({Key? key, this.deliverOfferModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductDetailWidget().commonText(
              text: deliverOfferModel!.title ?? '',
              fontSize: CommonTextFontSize.textSizeMedium),
          ProductDetailWidget()
              .descriptionText(deliverOfferModel!.description ?? ''),
          const Space(0, 15),
          SizedBox(
            height: AppScreenUtil().screenHeight(45),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                hintText: ProductDetailFont().pinCode,
                hintStyle: TextStyle(
                  fontSize: CommonTextFontSize.textSizeMedium,
                  color: appCtrl.appTheme.blackColor,
                  fontWeight: FontWeight.normal,
                ),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(AppScreenUtil().borderRadius(5)),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.zero,
                prefix: const Space(15, 0),
                suffixIconConstraints: BoxConstraints(
                  minHeight: AppScreenUtil().size(18),
                  minWidth: AppScreenUtil().size(18),
                ),
                suffixIcon: LatoFontStyle(
                  text: ProductDetailFont().check,
                  color: appCtrl.appTheme.primary,
                ).marginOnly(right: AppScreenUtil().screenWidth(15)),
                fillColor: appCtrl.appTheme.greyLight25.withOpacity(.6),
              ),
            ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
          ),
          const Space(0, 15),
          DeliveryOfferCard(
            deliveryOffer: deliverOfferModel!.deliveryOffer,
          )
        ],
      ).marginOnly(bottom: AppScreenUtil().screenHeight(10));
    });
  }
}
