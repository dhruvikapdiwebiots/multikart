import '../../../config.dart';

class CategoryCardLayout extends StatelessWidget {
  final CategoryModel? categoryModel;
  final int? index;
  final bool? isEven;
  final GestureTapCallback? onTap;

  const CategoryCardLayout(
      {Key? key, this.categoryModel, this.index, this.isEven, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetBuilder<AppController>(builder: (appCtrl) {
      return Container(
        width: MediaQuery.of(context).size.width,
        margin:
            EdgeInsets.symmetric(horizontal: AppScreenUtil().screenWidth(15)),
        child: Stack(
          alignment: isEven! ? Alignment.topRight : Alignment.topLeft,
          children: [
            BackgroundTextLayout(
              isEven: isEven,
              index: index,
              categoryModel: categoryModel,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height > 850 ? -4 : 16,
              child: Hero(
                tag: index.toString(),
                child: Image.asset(categoryModel!.image.toString(),
                    fit: BoxFit.fill, height: AppScreenUtil().screenHeight(105)),
              ),
            )
          ],
        ),
      ).gestures(onTap: onTap);
    });
  }
}
