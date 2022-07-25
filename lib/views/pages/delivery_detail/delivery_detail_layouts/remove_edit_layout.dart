import '../../../../config.dart';

class RemoveEditLayout extends StatelessWidget {
  final int? index;
  final int? selectRadio;

  const RemoveEditLayout({Key? key, this.selectRadio, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Row(
        children: [
          CustomButton(
              margin: 0,
              title: CommonTextFont().remove.toUpperCase(),
              color: index! == selectRadio
                  ? appCtrl.appTheme.whiteColor
                  : appCtrl.appTheme.greyLight25,
              width: AppScreenUtil().screenWidth(80),
              height: AppScreenUtil().screenHeight(20),
              fontSize: FontSizes.f12,
              fontWeight: FontWeight.normal,
              fontColor: appCtrl.appTheme.contentColor),
          CustomButton(
              title: CommonTextFont().edit.toUpperCase(),
              color: index! == selectRadio
                  ? appCtrl.appTheme.whiteColor
                  : appCtrl.appTheme.greyLight25,
              width: AppScreenUtil().screenWidth(80),
              height: AppScreenUtil().screenHeight(20),
              fontSize: FontSizes.f12,
              fontWeight: FontWeight.normal,
              fontColor: appCtrl.appTheme.contentColor)
        ],
      );
    });
  }
}
