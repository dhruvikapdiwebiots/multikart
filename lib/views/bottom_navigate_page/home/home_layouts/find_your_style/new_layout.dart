import '../../../../../config.dart';

class NewLayout extends StatelessWidget {
  const NewLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Container(
          width: AppScreenUtil().screenWidth(40),
          alignment: Alignment.center,
          height: AppScreenUtil().screenHeight(20),
          padding: EdgeInsets.symmetric(
            horizontal: AppScreenUtil().screenWidth(8),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: AppScreenUtil().screenWidth(10),
            vertical: AppScreenUtil().screenHeight(15),
          ),
          decoration: BoxDecoration(
            color: appCtrl.appTheme.primary,
            borderRadius:
            BorderRadius.circular(AppScreenUtil().borderRadius(3)),
          ),
          child: LatoFontStyle(
            text: "new",
            fontSize: 10,
            color: appCtrl.appTheme.white,
            fontWeight: FontWeight.w600,
          ),
        );
      }
    );
  }
}
