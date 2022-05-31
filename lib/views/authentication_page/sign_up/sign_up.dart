import 'package:multikart/config.dart';


class SignUpScreen extends StatelessWidget {
  final signUpCtrl = Get.put(SignUpController());

  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(builder: (_) {
      return Scaffold(
        body: Form(
          key: signUpCtrl.signupFormKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AuthenticationAppBar(
                  isDone: false,
                ),
                const Space(0, 20),
                SignUpWidget().loginLayout(
                    child: AuthenticationTitleText(
                      text1: SignUpFont().hey,
                      text2: SignUpFont().signUp,
                      isTextShow: true,
                    ),
                    context: context),
                const Space(0, 35),
                const SignupNameTextForm(),
                const Space(0, 15),
                const SignUpEmailPhoneTextForm(),
                const Space(0, 15),
                const SignUpPasswordTextForm(),
                const Space(0, 35),
                CustomButton(
                  title: SignUpFont().signUp.toUpperCase(),
                  onTap: () => signUpCtrl.signIn(),
                ),
                const Space(0, 20),
                const OrSignInWith(),
                const Space(0, 20),
                const SocialLoginLayout(),
                const Space(0, 30),
                CommonAccountText(
                  text1: CommonTextFont().alreadyAccount,
                  text2: CommonTextFont().signIn,
                  textColor: signUpCtrl.appCtrl.appTheme.blackColor,
                  fontWeight: FontWeight.normal,
                  onTap: () => Get.back(),
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
