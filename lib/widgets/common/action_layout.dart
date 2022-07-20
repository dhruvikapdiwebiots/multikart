

import '../../config.dart';

class ActionLayout extends StatelessWidget {
  final String? firstActionName,secondAction;
  final Widget? firstActionIcon;
  const ActionLayout({Key? key,this.firstActionName,this.secondAction,this.firstActionIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
               firstActionIcon!,
                const Space(5, 0),
                LatoFontStyle(
                  text: firstActionName,
                  fontSize: FontSizes.f12,
                  fontWeight: FontWeight.w600,
                  color: appCtrl.appTheme.blackColor,
                )
              ],
            ),
            const LatoFontStyle(
              text: "|",
            ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(10)),
            Row(
              children: [
                const DeleteIcon(),
                const Space(5, 0),
                LatoFontStyle(
                  text: secondAction,
                  fontSize: FontSizes.f12,
                  fontWeight: FontWeight.w600,
                  color: appCtrl.appTheme.blackColor,
                )
              ],
            )
          ],
        ).marginOnly(bottom: AppScreenUtil().screenHeight(5));
      }
    );
  }
}
