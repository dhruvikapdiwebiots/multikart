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
          children: const [
            //home category list layout
            HomeCategoryList()
          ],
        ),
      );
    });
  }
}
