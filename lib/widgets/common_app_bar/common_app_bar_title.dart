import '../../config.dart';

class CommonAppBarTitle extends StatelessWidget {
  final String? title;
  final String? desc;
  final bool isColumn;

  const CommonAppBarTitle(
      {Key? key, this.title, this.desc, this.isColumn = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return isColumn
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LatoFontStyle(
                  text: title,
                  fontSize: HomeFontSize.textSizeSMedium,
                  color: appCtrl.appTheme.blackColor,
                  fontWeight: FontWeight.w700,
                ),
                LatoFontStyle(
                  text: desc,
                  fontSize: HomeFontSize.textSizeSmall,
                  color: appCtrl.appTheme.contentColor,
                  fontWeight: FontWeight.normal,
                ),
              ],
            )
          : Row(
              children: [
                LatoFontStyle(
                  text: title,
                  fontSize: HomeFontSize.textSizeMedium,
                  color: appCtrl.appTheme.blackColor,
                  fontWeight: FontWeight.w700,
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: appCtrl.appTheme.contentColor,
                  size: AppScreenUtil().size(14),
                ),
                LatoFontStyle(
                  text: desc,
                  fontSize: HomeFontSize.textSizeSMedium,
                  color: appCtrl.appTheme.contentColor,
                  fontWeight: FontWeight.normal,
                ),
              ],
            );
    });
  }
}
