import '../../config.dart';

class GridviewThreeLayout extends StatelessWidget {
  final dynamic data;
  final int? index;
  final GestureTapCallback? onTap;
  const GridviewThreeLayout({Key? key,this.onTap,this.data,this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<AppController>(
      builder: (appCtrl) {
        return Container(
          width: AppScreenUtil().screenWidth(180),
          alignment: Alignment.center,
          height: AppScreenUtil().screenHeight(60),
          padding: EdgeInsets.symmetric(
            horizontal: AppScreenUtil().screenWidth(15),
          ),
          margin: EdgeInsets.only(
            right: AppScreenUtil().screenWidth(index != 2 ? 15 : 0),
            top: AppScreenUtil().screenHeight(10),
          ),
          decoration: BoxDecoration(
            color: data['isSelected'] ? appCtrl.appTheme.primary :appCtrl.appTheme.greyLight25,
            borderRadius: BorderRadius.circular(AppScreenUtil()
                .borderRadius(AppScreenUtil().borderRadius(5))),
          ),
          child: LatoFontStyle(
            text: data['title'],
            fontSize: 14,
            color: data['isSelected'] ? appCtrl.appTheme.white :appCtrl.appTheme.blackColor,
          ),
        ).gestures(onTap: onTap);
      }
    );
  }
}
