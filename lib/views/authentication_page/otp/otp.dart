import '../../../config.dart';

class OtpScreen extends StatelessWidget {
  final otpCtrl = Get.put(OtpController());

  OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpController>(builder: (_) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppScreenUtil().screenWidth(15),
                    vertical: AppScreenUtil().screenHeight(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LatoFontStyle(
                      text: OtpFont().codeVerification,
                      fontWeight: FontWeight.w700,
                      color: otpCtrl.appCtrl.appTheme.blackColor,
                      fontSize: OtpFontSize.textSizeSmall,
                    ),
                    const Space(0, 5),
                    LatoFontStyle(
                      text: OtpFont().enterYourVerificationCode,
                      fontWeight: FontWeight.normal,
                      color: otpCtrl.appCtrl.appTheme.contentColor,
                      fontSize: OtpFontSize.textSizeSMedium,
                    ),
                    const Space(0, 8),
                    const MobileNumberLayout(),
                    const Space(0, 15),
                    const OtpNumberLayout(),
                    const Space(0, 15),
                    CommonAccountText(
                      text1: OtpFont().notGetCode,
                      text2: OtpFont().resend,
                      textColor: otpCtrl.appCtrl.appTheme.blackColor,
                      fontWeight: FontWeight.normal,
                      isCenter: false,
                      onTap: () => Get.back(),
                    ),
                    const Space(0, 12),
                  ],
                ),
              ),
              CustomButton(
                  title: OtpFont().done.toUpperCase(),
                  onTap: () {
                    Get.back();
                    Get.toNamed(routeName.resetPassword);
                  })
            ],
          ),
        ),
      );
    });
  }
}
