import 'package:multikart/config.dart';

class InnerCategory extends StatefulWidget {
  const InnerCategory({Key? key}) : super(key: key);

  @override
  State<InnerCategory> createState() => _InnerCategoryState();
}

class _InnerCategoryState extends State<InnerCategory> {
  var innerCtrl = Get.put(InnerCategoryController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InnerCategoryController>(builder: (_) {
      return Scaffold(
        appBar: HomeProductAppBar(
          onTap: () => Get.back(),
          titleChild: CommonAppBarTitle(
            title: DashboardFont().categories,
            desc: innerCtrl.categoryModel != null
                ? innerCtrl.categoryModel!.title
                : "",
            isColumn: false,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              if (innerCtrl.categoryModel != null)
                CategoryCardLayout(
                  categoryModel: innerCtrl.categoryModel,
                  index: innerCtrl.index,
                  isEven: true,
                ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => innerCtrl.expandBox(index),
                    child: ExpandableListView(
                      onPressed: () => innerCtrl.expandBox(index),
                      index: index,
                      title:
                          innerCtrl.innerCategoryList[index]['name'].toString(),
                      isExpanded:
                          index == innerCtrl.tapped ? innerCtrl.expand : false,
                      child: SelectCardList(
                        data: innerCtrl.innerCategoryList[index]['child'],
                      ),
                    ),
                  );
                },
                itemCount: innerCtrl.innerCategoryList.length,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...innerCtrl.innerCategoryProduct.map((e) {

                      return Container(
                        child: Stack(
                          children: [
                            Container(
                              height: AppScreenUtil().screenHeight(100),
                              color: innerCtrl.appCtrl.appTheme.greyLight25,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(AppScreenUtil().borderRadius(5))),
                            ),
                            Image.asset(e['image'],height: AppScreenUtil().screenHeight(80),)
                          ],
                        ),
                      );
                    }).toList()
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}

