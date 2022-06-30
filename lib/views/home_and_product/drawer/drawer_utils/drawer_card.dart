import 'package:flutter_switch/flutter_switch.dart';
import 'package:multikart/views/home_and_product/drawer/switcher/theme_switcher.dart';

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
          Container(
            margin: EdgeInsets.only(
                bottom: AppScreenUtil().screenHeight(8.0),
                top: AppScreenUtil().screenHeight(10)),
            padding: EdgeInsets.symmetric(
                vertical: AppScreenUtil().screenHeight(10),
                horizontal: AppScreenUtil().screenWidth(10)),
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(AppScreenUtil().borderRadius(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        data['icon'] == "assets/svg/flags.svg"
                            ? SvgPicture.asset(svgAssets.flags,
                                fit: BoxFit.fill)
                            : SvgPicture.asset(data['icon'],
                                color: appCtrl.appTheme.blackColor),
                      ],
                    ),
                    const Space(20, 0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LatoFontStyle(
                            text: data['title'] == "Mode"
                                ? appCtrl.isTheme
                                    ? "Dark"
                                    : 'Light'
                                : data['title'],
                            fontSize: DrawerFontSize.textSizeSmall,
                            fontWeight: FontWeight.w600),
                        LatoFontStyle(
                          text: data['subTitle'],
                          fontSize: DrawerFontSize.textSizeSmall,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                  ],
                ),
                if (data['title'] == "Mode")
                  ThemeSwitcher(
                    onToggle: (val) {
                      appCtrl.isTheme = val;
                      appCtrl.update();
                      ThemeService().switchTheme(val);
                    },

                    status2: appCtrl.isTheme,
                  )
              ],
            ),
          ),
          if (index == 10)
            Container(
              height: 10,
              color: appCtrl.appTheme.lightGray,
            ),
          if (index != lastIndex && index != 10)
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
