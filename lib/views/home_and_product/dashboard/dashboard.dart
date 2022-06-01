import 'package:multikart/config.dart';
import 'package:multikart/controllers/home_product_controllers/dashboard_controller.dart';

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
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: Icon(Icons.menu_rounded,size: AppScreenUtil().size(25),),
            backgroundColor: dashboardCtrl.appCtrl.appTheme.whiteColor,
            titleSpacing: 0,
            title: const  LogoImage(),
            actions: [
             Padding(
               padding: EdgeInsets.symmetric(vertical: AppScreenUtil().screenHeight(12)),
               child: Image.asset(iconAssets.search,height: AppScreenUtil().screenHeight(25),fit: BoxFit.fill,),
             ),

             Padding(
               padding: EdgeInsets.symmetric(vertical: AppScreenUtil().screenHeight(12),horizontal: AppScreenUtil().screenHeight(15)),
               child: Image.asset(iconAssets.notification,height: AppScreenUtil().screenHeight(25),fit: BoxFit.fill,),
             ),
            ],
          ),
        ),
      );
    });
  }
}
