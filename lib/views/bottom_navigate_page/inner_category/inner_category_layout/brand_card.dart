import '../../../../config.dart';

class BrandCard extends StatelessWidget {
  final dynamic data;
  final int? index,lastIndex;
  const BrandCard({Key? key,this.index,this.data,this.lastIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Container(
          width: AppScreenUtil().screenWidth(180),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: AppScreenUtil().screenWidth(15),
          ),
          margin: EdgeInsets.only(
              right: AppScreenUtil().screenWidth(
                  index != lastIndex && index !=2
                      ? 15
                      : 0),
              top: AppScreenUtil().screenHeight(10),
              bottom: AppScreenUtil().screenHeight(10)),
          decoration: BoxDecoration(
            color: appCtrl.appTheme.greyLight25,
            borderRadius: BorderRadius.circular(AppScreenUtil()
                .borderRadius(AppScreenUtil().borderRadius(5))),
          ),
          child: Image.asset(
            data['image'].toString(),
            fit: BoxFit.contain,
            color: appCtrl.isTheme
                ? appCtrl.appTheme.contentColor
                : appCtrl.appTheme.blackColor,
          ),
        );
      }
    );
  }
}
