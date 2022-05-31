import '../../../config.dart';

class OtpScreen extends StatelessWidget {
  final otpCtrl = Get.put(OtpController());

  OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpController>(builder: (_) {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppScreenUtil().screenWidth(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LatoFontStyle(
                    text: OtpFont().codeVerification,
                    fontWeight: FontWeight.w700,
                    color: otpCtrl.appCtrl.appTheme.blackColor,
                    fontSize: OtpFontSize.textSizeSMedium,
                  ),
                  const Space(0, 5),
                  LatoFontStyle(
                    text: OtpFont().enterYourVerificationCode,
                    fontWeight: FontWeight.normal,
                    color: otpCtrl.appCtrl.appTheme.contentColor,
                    fontSize: OtpFontSize.textSizeMedium,
                  ),
                  const Space(0, 12),
                  const MobileNumberLayout(),
                  const Space(0, 20),
                  const OtpNumberLayout(),
                  const Space(0, 20),
                  CommonAccountText(
                    text1: OtpFont().notGetCode,
                    text2: OtpFont().resend,
                    textColor: otpCtrl.appCtrl.appTheme.blackColor,
                    fontWeight: FontWeight.normal,
                    isCenter: false,
                    onTap: () => Get.back(),
                  ),
                  const Space(0, 20),
                ],
              ),
            ),
            CustomButton(title: OtpFont().done.toUpperCase(), onTap: ()=> Get.back())
          ],
        ),
      );
    });
  }
}
