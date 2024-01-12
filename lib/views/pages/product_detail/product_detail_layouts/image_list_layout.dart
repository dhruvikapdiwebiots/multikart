import '../../../../config.dart';

class ImageListLayout extends StatelessWidget {
  const ImageListLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailController>(builder: (productCtrl) {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ImageList(), ImageSliderDot()],
      );
    });
  }
}
