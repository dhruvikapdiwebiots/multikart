import '../../../../config.dart';

class DrawerCard extends StatelessWidget {
  final dynamic data;
  final int? index;
  final int? lastIndex;
  final GestureTapCallback? onTap;

  const DrawerCard(
      {Key? key, this.data, this.index, this.lastIndex, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return Column(
        children: [
          ListTile(
              horizontalTitleGap: 0,
              title: LatoFontStyle(
                  text: data['title'],
                  fontSize: DrawerFontSize.textSizeSmall,
                  fontWeight: FontWeight.w600),
              subtitle: LatoFontStyle(
                text: data['subTitle'],
                fontSize: DrawerFontSize.textSizeSmall,
                fontWeight: FontWeight.normal,
              ),
              onTap: onTap,
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  data['icon'] == "assets/svg/flags.svg"
                      ? SvgPicture.asset(svgAssets.flags, fit: BoxFit.fill)
                      : SvgPicture.asset(data['icon'],
                          color: appCtrl.appTheme.blackColor),
                ],
              )),
          if (index == 7)
            Container(
              height: 10,
              color: appCtrl.appTheme.lightGray,
            ),
          if (index != lastIndex && index != 7)
            Divider(
              thickness: 1,
              color: appCtrl.appTheme.greyLight25,
              height: AppScreenUtil().screenHeight(2),
              endIndent: 15,
              indent: 15,
            )
        ],
      );
    });
  }
}
