
import '../../../../config.dart';

class OtpNumberLayout extends StatelessWidget {
  const OtpNumberLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpController>(builder: (otpCtrl) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OtpTextForm(
            controller: otpCtrl.fieldOne,
            autoFocus: true,
          ),
          OtpTextForm(controller: otpCtrl.fieldTwo, autoFocus: false),
          OtpTextForm(controller: otpCtrl.fieldThree, autoFocus: false),
          OtpTextForm(controller: otpCtrl.fieldFour, autoFocus: false)
        ],
      );
    });
  }
}
