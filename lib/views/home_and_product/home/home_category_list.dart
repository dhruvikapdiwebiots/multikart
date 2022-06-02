import 'package:multikart/controllers/home_product_controllers/home_controller.dart';

import '../../../config.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (homeCtrl) {
        return Expanded(
          child: ListView.builder(
            itemCount: homeCtrl.homeCategoryList.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: AppScreenUtil().screenWidth(10),left: AppScreenUtil().screenWidth(index == 0?15 :0)),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: AppScreenUtil().screenHeight(80),
                          width: AppScreenUtil().screenWidth(65),
                          decoration:  BoxDecoration(
                            color: homeCtrl.appCtrl.appTheme.homeCategoryColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Image.asset(homeCtrl.homeCategoryList[index]['image'].toString(),fit: BoxFit.cover, height: AppScreenUtil().screenHeight(70),
                          width: AppScreenUtil().screenWidth(60),)
                      ],
                    ),
                  ],
                ),
              );
            },),
        );
      }
    );
  }
}
