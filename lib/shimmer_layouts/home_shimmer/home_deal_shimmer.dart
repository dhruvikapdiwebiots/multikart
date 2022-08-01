import 'package:multikart/config.dart';

class DealOfTheDayShimmer extends StatelessWidget {
  const DealOfTheDayShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...AppArray().homeDealOfTheDayList.map((e) {
              return CommonShimmer(
                height: 100,
                width: MediaQuery.of(context).size.width,
                borderRadius: 2,
                color: appCtrl.appTheme.lightGray.withOpacity(.3),
                borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CommonShimmer(
                          height: 50,
                          width: 55,
                          borderRadius: 5,
                          color: appCtrl.appTheme.lightGray.withOpacity(.3),
                          borderColor:
                          appCtrl.appTheme.lightGray.withOpacity(.3),
                        ).paddingSymmetric(
                          vertical: AppScreenUtil().screenHeight(10),
                          horizontal: AppScreenUtil().screenWidth(10),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CommonShimmer(
                              height: 8,
                              width: 80,
                              borderRadius: 2,
                              color:
                              appCtrl.appTheme.lightGray.withOpacity(.3),
                              borderColor:
                              appCtrl.appTheme.lightGray.withOpacity(.3),
                            ),
                            const Space(0, 10),
                            CommonShimmer(
                              height: 8,
                              width: 50,
                              borderRadius: 2,
                              color:
                              appCtrl.appTheme.lightGray.withOpacity(.3),
                              borderColor:
                              appCtrl.appTheme.lightGray.withOpacity(.3),
                            ),
                            const Space(0, 10),
                            Row(
                              children: [
                                CommonShimmer(
                                  height: 8,
                                  width: 50,
                                  borderRadius: 2,
                                  color: appCtrl.appTheme.lightGray
                                      .withOpacity(.3),
                                  borderColor: appCtrl.appTheme.lightGray
                                      .withOpacity(.3),
                                ),
                                const Space(10, 0),
                                CommonShimmer(
                                  height: 8,
                                  width: 50,
                                  borderRadius: 2,
                                  color: appCtrl.appTheme.lightGray
                                      .withOpacity(.3),
                                  borderColor: appCtrl.appTheme.lightGray
                                      .withOpacity(.3),
                                ),
                                const Space(10, 0),
                                CommonShimmer(
                                  height: 8,
                                  width: 50,
                                  borderRadius: 2,
                                  color: appCtrl.appTheme.lightGray
                                      .withOpacity(.3),
                                  borderColor: appCtrl.appTheme.lightGray
                                      .withOpacity(.3),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    CommonShimmer(
                      height: 20,
                      width: 22,
                      borderRadius: 50,
                      color: appCtrl.appTheme.lightGray.withOpacity(.3),
                      borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
                    ).paddingSymmetric(
                        horizontal: AppScreenUtil().screenHeight(15),
                        vertical: AppScreenUtil().screenWidth(10))
                  ],
                ),
              )
                  .paddingSymmetric(vertical: AppScreenUtil().screenHeight(5))
                  .marginSymmetric(
                  horizontal: AppScreenUtil().screenWidth(15));
            }).toList(),
          ],
        );
      }
    );
  }
}
