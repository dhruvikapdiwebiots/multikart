import '../../../../../config.dart';

class FindStyleSubCategory extends StatelessWidget {
  const FindStyleSubCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeController>(
      builder: (homeCtrl) {
        return GridView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount:
          homeCtrl.findStyleCategoryCategoryWiseList.length,
          itemBuilder: (context, index) {
            return  FindStyleListCard(
              data: homeCtrl.findStyleCategoryCategoryWiseList[index],
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / (1.2)),
          ),
        );
      }
    );
  }
}
