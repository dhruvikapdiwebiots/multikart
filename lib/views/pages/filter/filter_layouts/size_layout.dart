import '../../../../config.dart';

class SizeLayout extends StatelessWidget {
  const SizeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<FilterController>(
      builder: (filterCtrl) {
        return GridView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: filterCtrl.sizeList.length,
          itemBuilder: (context, index) {
            return Container(
              width: AppScreenUtil().screenWidth(180),
              alignment: Alignment.center,
              height: AppScreenUtil().screenHeight(60),
              padding: EdgeInsets.symmetric(
                horizontal: AppScreenUtil().screenWidth(15),
              ),
              margin: EdgeInsets.only(
                right: AppScreenUtil().screenWidth(index != 2 ? 15 : 0),
                top: AppScreenUtil().screenHeight(10),
              ),
              decoration: BoxDecoration(
                color: filterCtrl.sizeList[index]['isSelected'] ? filterCtrl.appCtrl.appTheme.primary :filterCtrl.appCtrl.appTheme.greyLight25,
                borderRadius: BorderRadius.circular(AppScreenUtil()
                    .borderRadius(AppScreenUtil().borderRadius(5))),
              ),
              child: LatoFontStyle(
                text: filterCtrl.sizeList[index]['title'],
                fontSize: 14,
                color: filterCtrl.sizeList[index]['isSelected'] ? filterCtrl.appCtrl.appTheme.white :filterCtrl.appCtrl.appTheme.blackColor,
              ),
            ).gestures(onTap: (){
              filterCtrl.sizeList[index]['isSelected'] = !filterCtrl.sizeList[index]['isSelected'];
              filterCtrl.update();
            });
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 0,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / (4.5)),
          ),
        );
      }
    );
  }
}
