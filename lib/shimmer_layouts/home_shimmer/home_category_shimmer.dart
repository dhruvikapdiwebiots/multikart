import '../../config.dart';

class HomeCategoryShimmer extends StatelessWidget {
  const HomeCategoryShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...AppArray().homeCategory.map((e) {
                return CommonShimmer(
                  height: 60,
                  width: 55,
                  borderRadius: 50,
                  color: appCtrl.appTheme.lightGray.withOpacity(.3),
                  borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
                ).paddingOnly(
                  bottom: AppScreenUtil().screenHeight(10),
                  top: AppScreenUtil().screenHeight(10),
                  right: AppScreenUtil().screenWidth(10),
                );
              }).toList()
            ],
          ),
        ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15));
      }
    );
  }
}
