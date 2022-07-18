import '../../../../config.dart';

class CartBottomLayout extends StatelessWidget {
  final String? totalAmount, buttonName, desc;
  final bool isPrimaryDesc;

  const CartBottomLayout(
      {Key? key,
      this.totalAmount,
      this.buttonName,
      this.desc,
      this.isPrimaryDesc = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
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
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
                width: MediaQuery.of(context).size.width / 2.5,
                height: AppScreenUtil().screenHeight(50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LatoFontStyle(
                              text: "\$$totalAmount",
                              fontSize: CommonTextFontSize.f14,
                              textAlign: TextAlign.center)
                          .gestures(onTap: () => Get.back()),
                      LatoFontStyle(
                              text: desc,
                              fontSize: CommonTextFontSize.f12,
                              textAlign: TextAlign.start,
                              color: isPrimaryDesc
                                  ? appCtrl.appTheme.primary
                                  : appCtrl.appTheme.contentColor)
                          .gestures(onTap: () => Get.back())
                    ])),
            CustomButton(
                title: buttonName!,
                height: AppScreenUtil().screenHeight(30),
                width: AppScreenUtil().screenWidth(180),
                onTap: () => Get.back(),
                margin: 0)
          ]));
    });
  }
}
