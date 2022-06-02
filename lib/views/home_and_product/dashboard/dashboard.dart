import 'package:multikart/config.dart';

class Dashboard extends StatelessWidget {
  final dashboardCtrl = Get.put(DashboardController());

  Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (_) {
      return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          appBar: const HomeProductAppBar(),
          body: dashboardCtrl.appCtrl.widgetOptions
              .elementAt(dashboardCtrl.appCtrl.selectedIndex),
          bottomNavigationBar: CommonBottomNavigation(
            onTap: (val) => dashboardCtrl.bottomNavigationChange(val,context),
          ),
        ),
      );
    });
  }
}
