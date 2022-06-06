
import '../../../../../config.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeCtrl) {
      return Expanded(
        child: ListView.builder(
          itemCount: homeCtrl.homeCategoryList.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return HomeCategoryData(data: homeCtrl.homeCategoryList[index],index: index,);
          },
        ),
      );
    });
  }
}
