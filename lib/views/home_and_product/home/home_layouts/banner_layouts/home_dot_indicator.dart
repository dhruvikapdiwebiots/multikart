import '../../../../../config.dart';

class HomeDotIndicator extends StatelessWidget {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  HomeDotIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeCtrl) {
      return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: homeCtrl.bannerList.asMap().entries.map((entry) {
            return GestureDetector(
                onTap: () => homeCtrl.controller.animateToPage(entry.key),
                child: Container(
                    padding:
                        EdgeInsets.only(top: AppScreenUtil().screenHeight(10)),
                    height: AppScreenUtil()
                        .screenHeight(homeCtrl.current == entry.key ? 6 : 8),
                    width: homeCtrl.current == entry.key
                        ? AppScreenUtil().screenWidth(40)
                        : AppScreenUtil().screenHeight(
                            homeCtrl.current == entry.key ? 6 : 8),
                    margin:
                        EdgeInsets.only(right: AppScreenUtil().screenWidth(5)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: homeCtrl.appCtrl.appTheme.lightGray)));
          }).toList());
    });
  }
}
