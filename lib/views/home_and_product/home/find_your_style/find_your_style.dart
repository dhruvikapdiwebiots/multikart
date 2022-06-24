import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multikart/views/home_and_product/home/find_your_style/find_your_style_category.dart';

import '../../../../config.dart';

class FindYourStyle extends StatelessWidget {
  const FindYourStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (homeCtrl) {
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppScreenUtil().screenWidth(15),vertical: AppScreenUtil().screenHeight(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LatoFontStyle(
                    text: HomeFont().findYourStyle,
                    fontSize: HomeFontSize.textSizeSMedium  ,
                    fontWeight: FontWeight.w700,
                    color: homeCtrl.appCtrl.appTheme.blackColor,
                  ),
                  LatoFontStyle(
                    text: HomeFont().superSummerSale,
                    fontSize: HomeFontSize.textSizeSMedium ,
                    fontWeight: FontWeight.w400,
                    color: homeCtrl.appCtrl.appTheme.contentColor,
                  ),
                  const FindYourStyleCategory(),
                  SizedBox(
                    height: 500.w,
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: homeCtrl.findStyleCategoryList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                          Image.asset(homeCtrl.findStyleCategoryList[index].image.toString(),height: AppScreenUtil().screenHeight(150),fit: BoxFit.fill,),
                          ],
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 0,
                        childAspectRatio: MediaQuery.of(context).size.width /
                            (MediaQuery.of(context).size.height /(1.7)),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      }
    );
  }
}
