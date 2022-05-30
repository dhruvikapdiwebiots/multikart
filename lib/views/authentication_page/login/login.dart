import 'package:multikart/config.dart';
import 'package:multikart/controllers/authentication_controllers/login_controller.dart';
import 'package:multikart/views/authentication_page/login/login_constant.dart';
import 'package:multikart/views/authentication_page/login/login_now_text.dart';
import 'package:multikart/views/authentication_page/login/login_widget.dart';
import 'package:multikart/widgets/common/custom_text_form_field.dart';
import 'package:multikart/widgets/lato_font_style.dart';

class LoginScreen extends StatelessWidget {
  final loginCtrl = Get.put(LoginController());

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (_) {
      return Scaffold(
        body: Column(
          children: [
            const AuthenticationAppBar(
              isDone: false,
            ),
            LoginWidget().loginLayout(child: const LoginNowText(),context: context),
            const Space(0, 20),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppScreenUtil().screenWidth(15)),
              child: CustomTextFormField(radius: 5,),
            ),
            const Space(0, 15),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppScreenUtil().screenWidth(15)),
              child: CustomTextFormField(radius: 5,),
            ),
            const Space(0, 20),
            CustomButton(title: LoginFont().signInCapital)
          ],
        ),
      );
    });
  }
}
