import '../../../../config.dart';

class WishListCard extends StatelessWidget {
  final HomeDealOfTheDayModel? homeDealOfTheDayModel;
  final int? index,lastIndex;
  const WishListCard({Key? key,this.homeDealOfTheDayModel,this.lastIndex,this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  AppScreenUtil().borderRadius(3)),
              child: FadeInImageLayout(
                image: homeDealOfTheDayModel!.image,
                fit: BoxFit.cover,
                height: AppScreenUtil().size(110),
                width: AppScreenUtil().size(110),
              ),
            ),
            const Space(10, 0),
            DealsOfTheDayContent(
              data: homeDealOfTheDayModel, isVariantsShow: false,isActionShow: true,),
          ],
        ).marginSymmetric(
            horizontal: AppScreenUtil().screenWidth(15),
            vertical: AppScreenUtil().screenHeight(15)),
        if(index != lastIndex)
          const BorderLineLayout()
      ],
    );
  }
}
