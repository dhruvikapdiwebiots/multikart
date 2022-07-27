import '../../../../config.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (loginCtrl) {
      return Column(
        children: [
          //app bar layout
          AuthenticationAppBar(
              isDone: false, onTap: () => Get.toNamed(routeName.dashboard)),
          const Space(0, 20),

          //text and description layout
          LoginWidget().loginLayout(
              child: AuthenticationTitleText(
                  text1: LoginFont().hey,
                  text2: LoginFont().loginNow,
                  isTextShow: true),
              context: context),
          const Space(0, 35),

          //email text box layout
          const LoginEmailTextForm(),
          const Space(0, 15),

          //password text box layout
          const LoginPasswordTextForm(),
          const Space(0, 10),

          //forgot password text layout
          LoginWidget().forgotPasswordLayout(
              onTap: () => Get.toNamed(routeName.forgotPassword),
              color: loginCtrl.appCtrl.appTheme.primary,
              text: LoginFont().forgotPassword),
          const Space(0, 35),

          //button layout
          CustomButton(
            title: LoginFont().signInCapital,
            onTap: () => loginCtrl.signIn(),
          ),
          const Space(0, 20),

          //or sign in with text layout
          const OrSignInWith(),
          const Space(0, 20),

          //social login layout
          const SocialLoginLayout(),
          const Space(0, 30),

          //create new account layout
          CommonAccountText(
              text1: CommonTextFont().ifYouAreNew,
              text2: CommonTextFont().createNow,
              textColor: loginCtrl.appCtrl.appTheme.blackColor,
              fontWeight: FontWeight.normal,
              onTap: () => Get.toNamed(routeName.signUp)),
          const Space(0, 20)
        ],
      );
    });
  }
}
