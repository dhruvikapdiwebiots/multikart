import '../../../../config.dart';

class BottomLayout extends StatelessWidget {
  final String? firstButtonText, secondButtonText;
  final bool isBorderButton;
  const BottomLayout({Key? key,this.firstButtonText,this.secondButtonText,this.isBorderButton = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<AppController>(
      builder: (appCtrl) {
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
              vertical: AppScreenUtil().screenHeight(5),
              horizontal: AppScreenUtil().screenWidth(15)),
          decoration: BoxDecoration(
            color: appCtrl.appTheme.whiteColor,
            boxShadow: [
              BoxShadow(
                color: appCtrl.appTheme.lightGray,
                spreadRadius: 10,
                blurRadius: 5,
                offset: const Offset(0, 7), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.5,
                child: LatoFontStyle(
                  text: firstButtonText,
                  fontSize: FontSizes.f14,
                  textAlign: TextAlign.center,
                ).gestures(onTap: ()=> Get.back()),
              ),
              isBorderButton ?
              CustomButton(title: secondButtonText!, height: 35, width: 160,onTap: ()=> Get.back(),) :
              CustomButton(title: secondButtonText!, height: 35, width: 160,onTap: ()=> Get.back(),color: appCtrl.appTheme.whiteColor,border: Border.all(color: appCtrl.appTheme.primary),fontColor: appCtrl.appTheme.primary,)
            ],
          ),
        );
      }
    );
  }
}
