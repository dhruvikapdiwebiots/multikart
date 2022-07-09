import '../../../config.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return appCtrl.selectedIndex == 1 ||
              appCtrl.selectedIndex == 3 ||
              appCtrl.selectedIndex == 4
          ? LatoFontStyle(
              text: appCtrl.selectedIndex == 1
                  ? DashboardFont().categories
                  : appCtrl.selectedIndex == 3
                      ? DashboardFont().myCart
                      : DashboardFont().dealsOfTheDay,
              color: appCtrl.appTheme.blackColor,
              fontWeight: FontWeight.w700,
              fontSize: CommonTextFontSize.textSizeMedium,
            )
          : CommonAppBarTitle(
              title: DashboardFont().shoppingCart,
              desc: DashboardFont().steps,
            );
    });
  }
}
