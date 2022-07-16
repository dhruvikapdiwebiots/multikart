import 'package:multikart/config.dart';


class CartList extends StatelessWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      builder: (cartCtrl) {
        return cartCtrl.cartModelList != null ? Column(
          children: [
            ...cartCtrl.cartModelList!.cartList!.asMap().entries.map((e) => Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              AppScreenUtil().borderRadius(3)),
                          child: FadeInImageLayout(
                            image: e.value.image,
                            fit: BoxFit.cover,
                            height: AppScreenUtil().size(110),
                            width: AppScreenUtil().size(110),
                          ),
                        ),
                        if (e.value.isTrending!)
                          const TrendingButton()
                      ],
                    ),
                    const Space(10, 0),
                    DealsOfTheDayContent(
                        data: e.value, isVariantsShow: true),
                  ],
                ).marginSymmetric(
                    horizontal: AppScreenUtil().screenWidth(15),
                    vertical: AppScreenUtil().screenHeight(15)),
                const BorderLineLayout()
              ],
            )),
          ],
        ) : Container();
      }
    );
  }
}
