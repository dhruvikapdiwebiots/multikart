import 'package:multikart/config.dart';


class LoginScreen extends StatelessWidget {
  final loginCtrl = Get.put(LoginController());
  final GlobalKey<FormState> loginformKey = GlobalKey<FormState>();
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (_) {
      return  WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          body: Form(
              key: loginformKey,
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  AuthenticationAppBar(
                    isDone: false,
                    onTap: ()=> Get.toNamed(routeName.dashboard),
                  ),
                  const Space(0, 20),
                  LoginWidget().loginLayout(
                      child: AuthenticationTitleText(
                        text1: LoginFont().hey,
                        text2: LoginFont().loginNow,
                        isTextShow: true,
                      ),
                      context: context),
                  const Space(0, 35),
                  const LoginEmailTextForm(),
                  const Space(0, 15),
                  const LoginPasswordTextForm(),
                  const Space(0, 10),
                  LoginWidget().forgotPasswordLayout(
                    onTap: () => Get.toNamed(routeName.forgotPassword),
                      color: loginCtrl.appCtrl.appTheme.primary,
                      text: LoginFont().forgotPassword),
                  const Space(0, 35),
                  CustomButton(
                    title: LoginFont().signInCapital,
                    onTap: () => loginCtrl.signIn(),
                  ),
                  const Space(0, 20),
                  const OrSignInWith(),
                  const Space(0, 20),
                  const SocialLoginLayout(),
                  const Space(0, 30),
                  CommonAccountText(
                    text1: CommonTextFont().ifYouAreNew,
                    text2: CommonTextFont().createNow,
                    textColor: loginCtrl.appCtrl.appTheme.blackColor,
                    fontWeight: FontWeight.normal,
                    onTap: () => Get.toNamed(routeName.signUp),
                  ),
                  const Space(0, 20),
                ],
              ))),
        ),
      );
    });
  }
}
