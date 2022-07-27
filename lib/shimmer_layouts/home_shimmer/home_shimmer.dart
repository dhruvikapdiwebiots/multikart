import 'package:multikart/widgets/common/common_shimmer.dart';
import 'package:shimmer/shimmer.dart';

import '../../config.dart';

class HomerShimmer extends StatelessWidget {
  const HomerShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Shimmer.fromColors(
        baseColor: appCtrl.appTheme.greyLight25,
        highlightColor: appCtrl.appTheme.gray,
        child: SingleChildScrollView(
          primary: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(

                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...AppArray().homeCategory.map((e) {
                      return  CommonShimmer(
                        height: 50,
                        width: 55,
                        borderRadius: 50,
                        color: appCtrl.appTheme.lightGray.withOpacity(.3),
                        borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
                      ).paddingOnly(bottom: AppScreenUtil().screenHeight(10),top: AppScreenUtil().screenHeight(10),right: AppScreenUtil().screenWidth(10),);
                    }).toList()
                  ],
                ),
              ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
              CommonShimmer(
                height: 150,
                width: MediaQuery.of(context).size.width,
                borderRadius: 5,
                color: appCtrl.appTheme.lightGray.withOpacity(.3),
                borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
              ).paddingSymmetric(vertical: AppScreenUtil().screenHeight(10)).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonShimmer(
                    height: 10,
                    width: 110,
                    borderRadius: 2,
                    color: appCtrl.appTheme.lightGray.withOpacity(.3),
                    borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
                  ),
                  CommonShimmer(
                    height: 10,
                    width: 50,
                    borderRadius: 2,
                    color: appCtrl.appTheme.lightGray.withOpacity(.3),
                    borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
                  )
                ],
              ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
              const Space(0, 10),
              ...AppArray().homeDealOfTheDayList.map((e) {
                return    CommonShimmer(
                  height:100,
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
                            borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
                          ).paddingSymmetric(vertical: AppScreenUtil().screenHeight(10),horizontal: AppScreenUtil().screenWidth(10),),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CommonShimmer(
                                height: 8,
                                width: 80,
                                borderRadius: 2,
                                color: appCtrl.appTheme.lightGray.withOpacity(.3),
                                borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
                              ),
                              const Space(0, 10),
                              CommonShimmer(
                                height: 8,
                                width: 50,
                                borderRadius: 2,
                                color: appCtrl.appTheme.lightGray.withOpacity(.3),
                                borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
                              ),
                              const Space(0, 10),
                              Row(
                                children: [
                                  CommonShimmer(
                                    height: 8,
                                    width: 50,
                                    borderRadius: 2,
                                    color: appCtrl.appTheme.lightGray.withOpacity(.3),
                                    borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
                                  ),
                                  const Space(10, 0),
                                  CommonShimmer(
                                    height: 8,
                                    width: 50,
                                    borderRadius: 2,
                                    color: appCtrl.appTheme.lightGray.withOpacity(.3),
                                    borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
                                  ),
                                  const Space(10, 0),
                                  CommonShimmer(
                                    height: 8,
                                    width: 50,
                                    borderRadius: 2,
                                    color: appCtrl.appTheme.lightGray.withOpacity(.3),
                                    borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
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
                      ).paddingSymmetric(horizontal: AppScreenUtil().screenHeight(15),vertical: AppScreenUtil().screenWidth(10))
                    ],
                  ),
                ).paddingSymmetric(vertical: AppScreenUtil().screenHeight(5)).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15));
              }).toList(),

              const Space(0, 10),
              const BorderLineLayout(),
              const Space(0, 10),
              CommonShimmer(
                height: 10,
                width: 110,
                borderRadius: 2,
                color: appCtrl.appTheme.lightGray.withOpacity(.3),
                borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
              ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
              const Space(0, 10),
              CommonShimmer(
                height: 10,
                width: 50,
                borderRadius: 2,
                color: appCtrl.appTheme.lightGray.withOpacity(.3),
                borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
              ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
              const Space(0, 10),
              SingleChildScrollView(

                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...AppArray().homeCategory.map((e) {
                      return  CommonShimmer(
                        height: 30,
                        width: 100,
                        borderRadius: 5,
                        color: appCtrl.appTheme.lightGray,
                        borderColor: appCtrl.appTheme.lightGray.withOpacity(.3),
                        child:  CommonShimmer(
                          height: 10,
                          width: 50,
                          borderRadius: 2,
                          color: appCtrl.appTheme.lightGray.withOpacity(.2),
                          borderColor: appCtrl.appTheme.lightGray.withOpacity(.2),
                        ),
                      ).paddingOnly(bottom: AppScreenUtil().screenHeight(10),top: AppScreenUtil().screenHeight(10),right: AppScreenUtil().screenWidth(10),);
                    }).toList()
                  ],
                ),
              ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
            ],
          ),
        ),
      );
    });
  }
}
