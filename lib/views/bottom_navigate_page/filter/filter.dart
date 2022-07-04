
import 'package:multikart/controllers/home_product_controllers/filter_controller.dart';
import 'package:multikart/views/bottom_navigate_page/filter/filter_layouts/sortBy_layout.dart';

import '../../../config.dart';

class Filter extends StatelessWidget {
  final filterCtrl = Get.put(FilterController());

  Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterController>(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Filters'),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          actions: [
            SvgPicture.asset(
              svgAssets.closeSquare,
              height: AppScreenUtil().size(25),
              width: AppScreenUtil().size(25),
              fit: BoxFit.contain,
            ).marginOnly(right: AppScreenUtil().screenWidth(15)),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            LatoFontStyle(
              text: 'Short By:',
              fontSize: 16,
            ),
            Space(0, 20),
            SortByLayout(),
            Space(0, 20),
            LatoFontStyle(
              text: 'Brands:',
              fontSize: 16,
            ),
          ],
        ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
      );
    });
  }
}
