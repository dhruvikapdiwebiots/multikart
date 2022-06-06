import 'package:multikart/config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeCtrl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (_) {
      return Scaffold(
        body: Column(
          children: [
            //home category list layout
            const HomeCategoryList(),
            //banner list layout
            const  HomeBannerList(),
            //deals of the day
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppScreenUtil().screenWidth(15)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LatoFontStyle(
                        text: 'Deals of the Day',
                        color: homeCtrl.appCtrl.appTheme.blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                      LatoFontStyle(
                        text: 'See All',
                        color: homeCtrl.appCtrl.appTheme.primary,
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
