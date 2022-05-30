import '../../../config.dart';

class LoginWidget {
  //image layout
  Widget imageLayout(image) {
    return Container(
        padding:
            EdgeInsets.symmetric(horizontal: AppScreenUtil().screenWidth(7)),
        child: Image.asset(image,
            fit: BoxFit.fill, width: AppScreenUtil().screenWidth(900.0)));
  }

  //login layout
  Widget loginLayout({Widget? child,context}){
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppScreenUtil().screenWidth(15)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: child,
      ),
    );
  }

  //text Layout
  Widget textLayout(
      {String? text,
      double? fontSize,
      var fontWeight,
      var color,
      TextDecoration textDecoration = TextDecoration.none}) {
    return Text(text!)
        .fontSize(AppScreenUtil().fontSize(fontSize!))
        .fontWeight(fontWeight)
        .fontFamily(GoogleFonts.lato().fontFamily.toString())
        .textColor(color)
        .textAlignment(TextAlign.center)
        .textDecoration(textDecoration);
  }

}
