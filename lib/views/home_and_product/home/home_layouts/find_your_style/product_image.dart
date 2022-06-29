import '../../../../../config.dart';

class ProductImage extends StatelessWidget {
  final String? image;
  const ProductImage({Key? key,this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
      BorderRadius.circular(AppScreenUtil().borderRadius(5)),
      child: Card(
        elevation: 3,
        shadowColor: Colors.grey.withOpacity(.5),
        child: ClipRRect(
          borderRadius:
          BorderRadius.circular(AppScreenUtil().borderRadius(5)),
          child: FadeInImageLayout(
            image: image,
            fit: BoxFit.fill,
            width: AppScreenUtil().screenWidth(160),
            height: AppScreenUtil().screenHeight(200),
          ),
        ),
      ),
    );
  }
}
