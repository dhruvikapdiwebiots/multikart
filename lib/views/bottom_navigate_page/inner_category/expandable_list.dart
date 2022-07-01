import '../../../../config.dart';

class SelectCardList extends StatelessWidget {
  final dynamic data;

  const SelectCardList({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return GetBuilder<InnerCategoryController>(builder: (paymentCtrl) {
        return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: data.length,
            itemBuilder: (BuildContext context, int indexs) {
              return LatoFontStyle(text: data[indexs]["name"],fontSize: 14,).paddingSymmetric(horizontal: AppScreenUtil().screenWidth(35),vertical: AppScreenUtil().screenHeight(5));
            });
      });
    });
  }
}
