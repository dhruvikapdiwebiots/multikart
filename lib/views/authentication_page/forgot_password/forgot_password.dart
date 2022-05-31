import '../../../config.dart';

class ForgotPassWordScreen extends StatelessWidget {
  final forgotPasswordCtrl = Get.put(ForgotPasswordController());

  ForgotPassWordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPasswordController>(builder: (_) {
      return Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            const AuthenticationAppBar(
              isDone: false,
            ),
            const Space(0, 20),
            ForgotPasswordWidget().loginLayout(
                child: AuthenticationTitleText(
                  text1: ForgotPasswordFont().forgotPasswordTitle,
                  isTextShow: false,
                ),
                context: context),
            const Space(0, 35),
            const ForgotPasswordEmailTextForm(),
            const Space(0, 30),
            CustomButton(
              title: ForgotPasswordFont().sendOtp.toUpperCase(),
              onTap: () => forgotPasswordCtrl.sendOtp(),
            ),
            const Space(0, 30),
            CommonAccountText(
              text1: ForgotPasswordFont().backTo,
              text2: ForgotPasswordFont().signIn,
              textColor: forgotPasswordCtrl.appCtrl.appTheme.blackColor,
              fontWeight: FontWeight.normal,
              onTap: () => Get.back(),
            ),
          ],
        )),
      );
    });
  }
}
