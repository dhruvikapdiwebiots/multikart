import 'package:multikart/config.dart';
import 'package:multikart/views/home_and_product/home/offer_time/offer_time_layout.dart';

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
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: const [
              //home category list layout
              HomeCategoryList(),
              // border line layout
              BorderLineLayout(),
              //banner list layout
              HomeBannerList(),
              //deals of the day
              HomeDealsOfTheDayLayout(),
              // border line layout
              BorderLineLayout(),

              //find your style
              FindYourStyle(),

              //offer time banner
             OfferTimeLayout()
            ],
          ),
        ),
      );
    });
  }
}
