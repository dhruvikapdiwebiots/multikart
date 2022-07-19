import '../../../../config.dart';

class CustomRadio extends StatelessWidget {
  final int? index;
  final int? selectRadio;
  final GestureTapCallback? onTap;
  const CustomRadio({Key? key,this.index,this.selectRadio,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return InkWell(
          onTap:onTap,
          child: Container(
            height: AppScreenUtil().screenHeight(18),
            width: AppScreenUtil().screenWidth(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                  color: appCtrl.appTheme.borderColor,
                  width: 2),
              borderRadius: BorderRadius.circular(
                  AppScreenUtil().borderRadius(20)),
              color:selectRadio == index
                  ? appCtrl.appTheme.whiteColor
                  : appCtrl.appTheme.whiteColor,
            ),
            child: Icon(Icons.circle,
                size: AppScreenUtil().size(10),
                color: selectRadio == index
                    ? appCtrl.appTheme.primary
                    : appCtrl.appTheme.whiteColor),
          ),
        );
      }
    );
  }
}
