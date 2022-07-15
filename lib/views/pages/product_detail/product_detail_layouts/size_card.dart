import '../../../../config.dart';

class SizeCard extends StatelessWidget {
  final SizeModel? sizeModel;
  const SizeCard({Key? key,this.sizeModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
          return Container(
            height: AppScreenUtil().screenHeight(40),
            width: AppScreenUtil().screenWidth(45),
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: AppScreenUtil().screenWidth(12)),
            decoration: BoxDecoration(
                color: appCtrl.appTheme.greyLight25,
                borderRadius: BorderRadius.circular(
                    AppScreenUtil().borderRadius(5))),
            child: LatoFontStyle(
              text: sizeModel!.title.toString(),
              fontSize: CommonTextFontSize.f16,
              color: sizeModel!.isAvailable! ? appCtrl.appTheme.blackColor: appCtrl.appTheme.borderColor,
              textDecoration: sizeModel!.isAvailable! ? TextDecoration.none : TextDecoration.lineThrough,
            ),
          );
      }
    );
  }
}
