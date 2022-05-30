import 'package:multikart/widgets/lato_font_style.dart';

import '../../config.dart';

class AlreadyAccountText extends StatelessWidget {
  const AlreadyAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OnBoardWidget().textLayout(
              text: CommonTextFont().alreadyAccount,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: appCtrl.appTheme.contentColor,
              textDecoration: TextDecoration.none),
          const Space(5, 0),
          InkWell(
            onTap: () => Get.toNamed(routeName.login),
            child: LatoFontStyle(
                text: CommonTextFont().signIn,
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: appCtrl.appTheme.contentColor,
                textDecoration: TextDecoration.underline),
          )
        ],
      );
    });
  }
}
