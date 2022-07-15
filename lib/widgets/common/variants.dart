import 'package:multikart/config.dart';

class Variants extends StatelessWidget {
  final GestureTapCallback? qtyTap,sizeTap;
  const Variants({Key? key,this.sizeTap,this.qtyTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children:  [
              VariantOptions(
                text: "${CommonTextFont().qty} 1",
                onTap: qtyTap,
              ),
              const Space(15, 0),
              VariantOptions(
                text: "${CommonTextFont().size} S",
                onTap: sizeTap,
              ),
            ],
          ),
          const Space(0, 15),
          Container(
            height: AppScreenUtil().screenHeight(0.5),
            color: appCtrl.appTheme.lightGray,
            width: MediaQuery.of(context).size.width / 1.8,
          ),
          const Space(0, 10),
          const WishlistAndRemove()
        ],
      );
    });
  }
}

