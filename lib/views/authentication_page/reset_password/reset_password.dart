import 'package:multikart/config.dart';

class ResetPassword extends StatelessWidget {
  final resetPasswordCtrl = Get.put(ResetPasswordController());

  ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResetPasswordController>(builder: (_) {
      return Scaffold(
        body: Form(
          key: resetPasswordCtrl.signupFormKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                 AuthenticationAppBar(
                  isDone: false,
                  onTap: ()=> Get.toNamed(routeName.dashboard),
                ),
                const Space(0, 20),
                ResetPasswordWidget().layout(
                    child: AuthenticationTitleText(
                      text1: ResetPasswordFont().resetPassword,
                      isTextShow: false,
                    ),
                    context: context),
                const Space(0, 35),
                const Space(0, 15),
                const CurrentPasswordTextForm(),
                const Space(0, 15),
                const NewPasswordTextForm(),
                const Space(0, 15),
                const ConfirmPasswordTextForm(),
                const Space(0, 35),
                CustomButton(
                  title: ResetPasswordFont().resetPassword.toUpperCase(),
                  onTap: () => resetPasswordCtrl.signIn(),
                ),
                const Space(0, 20),
                CommonAccountText(
                  text1: ResetPasswordFont().backTo,
                  text2: ResetPasswordFont().signIn,
                  textColor: resetPasswordCtrl.appCtrl.appTheme.blackColor,
                  fontWeight: FontWeight.normal,
                  onTap: () {
                    Get.back();
                    Get.back();
                  },
                ),
                const Space(0, 20),
              ],
            ),
          ),
        ),
      );
    });
  }
}
