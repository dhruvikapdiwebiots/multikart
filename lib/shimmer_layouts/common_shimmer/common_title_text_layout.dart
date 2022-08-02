import '../../config.dart';

class CommonTitleText extends StatelessWidget {
  const CommonTitleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<AppController>(
      builder: (appCtrl) {
        return CommonShimmer(
          height: 10,
          width: 100,
          borderRadius: 2,
          color: appCtrl.appTheme.lightGray.withOpacity(.3),
          borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
        ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15));
      }
    );
  }
}
