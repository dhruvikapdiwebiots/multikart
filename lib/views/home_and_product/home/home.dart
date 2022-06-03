import 'package:multikart/config.dart';
import 'package:multikart/controllers/home_product_controllers/home_controller.dart';
import 'package:multikart/views/home_and_product/home/home_category_list.dart';

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
          children:  [
            //home category list layout
            const HomeCategoryList(),
            //banner list layout
            Expanded(

/*
              child: ListView.builder(
                itemCount: homeCtrl.bannerList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppScreenUtil().screenWidth(15)),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(AppScreenUtil().borderRadius(10)),
                            child: Image.asset(homeCtrl.bannerList[index]['image'],fit: BoxFit.cover,))
                      ],
                    ),
                  );
                },
              ),*/
            child: CarouselSlider.builder(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 1.7,
                viewportFraction: 1,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              itemCount: homeCtrl.bannerList.length,
              itemBuilder:
                  (BuildContext context, int index, int pageViewIndex) {
                return Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(AppScreenUtil().borderRadius(10)),
                        child: Image.asset(homeCtrl.bannerList[index]['image'],fit: BoxFit.cover,))
                  ],
                );
              },
            ),
            )
          ],
        ),
      );
    });
  }
}
