import '../../../../config.dart';

class OfferByYou extends StatelessWidget {
  final Offer? offer;

  const OfferByYou({Key? key, this.offer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductDetailWidget().commonText(
            text: ProductDetailFont().offersForYou,
            fontSize: FontSizes.f14),
        ProductDetailWidget().commonText(
            text: offer!.title ?? '',
            fontSize: FontSizes.f14),
        ProductDetailWidget().descriptionText(offer!.desc ?? ''),
        ProductOffer(
          text: offer!.code ?? '',
        ).marginOnly(bottom: AppScreenUtil().screenHeight(10))
      ],
    );
  }
}
