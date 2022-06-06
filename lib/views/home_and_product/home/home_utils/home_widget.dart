import 'package:multikart/config.dart';

class HomeWidget{

  //banner image
  Widget bannerImage(image)=>ClipRRect(
      borderRadius:
      BorderRadius.circular(AppScreenUtil().borderRadius(10)),
      child: Image.asset(
        image,
        fit: BoxFit.fill,
        height: AppScreenUtil().screenHeight(250),
      ));
}