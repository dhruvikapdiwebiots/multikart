import 'package:multikart/config.dart';
import 'package:multikart/views/menu/drawer/drawer_screen.dart';
import 'package:multikart/views/menu/dashboard/app_bar_title.dart';

class Dashboard extends StatefulWidget {
 const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  final dashboardCtrl = Get.put(DashboardController());

  @override
  void initState() {
    super.initState();

    dashboardCtrl.drawerSlideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (_) {
      return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          key: dashboardCtrl.scaffoldKey,

          drawer: const DrawerScreen(),
          appBar: HomeProductAppBar(
            onTap: () => dashboardCtrl.appBarLeadingAction(),
            titleChild: dashboardCtrl.appCtrl.selectedIndex == 0
                ? const LogoImage()
                : const AppBarTitle(),

          ),

          body: dashboardCtrl.appCtrl.widgetOptions
              .elementAt(dashboardCtrl.appCtrl.selectedIndex),
          bottomNavigationBar: CommonBottomNavigation(
            onTap: (val) => dashboardCtrl.bottomNavigationChange(val, context),
          ),
        ),
      );
    });
  }
}