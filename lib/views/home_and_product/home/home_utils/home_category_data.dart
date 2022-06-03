import 'package:multikart/views/home_and_product/home/home_utils/home_constant.dart';

import '../../../../config.dart';

class HomeCategoryData extends StatelessWidget {
  final dynamic data;
  final int? index;
  const HomeCategoryData({Key? key,this.data,this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Padding(
          padding: EdgeInsets.only(
              right: AppScreenUtil().screenWidth(12),
              left: AppScreenUtil().screenWidth(index == 0 ? 10 : 0)),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: AppScreenUtil().screenHeight(50),
                    width: AppScreenUtil().screenWidth(55),
                    decoration: BoxDecoration(
                      color: appCtrl.appTheme.homeCategoryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Image.asset(
                    data['image'].toString(),
                    fit: BoxFit.cover,
                    height: AppScreenUtil().screenHeight(55),
                    width: AppScreenUtil().screenWidth(55),
                  )
                ],
              ),
              const Space(0, 10),
              LatoFontStyle(text:data['title'].toString() ,fontWeight: FontWeight.w600,fontSize: HomeFontSize.textSizeSmall,)
            ],
          ),
        );
      }
    );
  }
}
