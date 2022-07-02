import '../../../../config.dart';

class InnerCategoryProduct extends StatelessWidget {
  const InnerCategoryProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InnerCategoryController>(
      builder: (innerCtrl) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: AppScreenUtil().screenWidth(15)),
          height: AppScreenUtil().screenHeight(180),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: innerCtrl.innerCategoryProduct.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return SizedBox(
                height: AppScreenUtil().screenHeight(180),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: AppScreenUtil().screenHeight(140),
                      width: AppScreenUtil().screenWidth(130),
                      margin: EdgeInsets.only(right: AppScreenUtil().screenWidth(15)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            AppScreenUtil().borderRadius(5)),
                        color: innerCtrl.appCtrl.appTheme.lightGray,
                      ),
                    ),
                    Image.asset(
                      innerCtrl.innerCategoryProduct[index]['image'],
                      fit: BoxFit.fill,
                      height: AppScreenUtil().screenHeight(180),
                    )
                  ],
                ),
              );
            },
          ),
        );
      }
    );
  }
}
