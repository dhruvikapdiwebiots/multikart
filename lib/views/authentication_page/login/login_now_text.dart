import 'package:multikart/views/authentication_page/login/login_constant.dart';

import '../../../config.dart';
import '../../../widgets/lato_font_style.dart';

class LoginNowText extends StatelessWidget {
  const LoginNowText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LatoFontStyle(
                text: LoginFont().hey,
                fontWeight: FontWeight.w700,
                fontSize: 25,
                color: appCtrl.appTheme.blackColor),
            LatoFontStyle(
                text: LoginFont().loginNow,
                fontWeight: FontWeight.w700,
                fontSize: 25,
                color: appCtrl.appTheme.blackColor),
          ],
        );
      }
    );
  }
}
