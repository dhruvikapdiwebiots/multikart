import '../../config.dart';

class HomeProductAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeProductAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: const MenuRoundedIcon(),
        backgroundColor: appCtrl.appTheme.whiteColor,
        titleSpacing: 0,
        title: const LogoImage(),
        actions:  [AppBarActionLayout(),],
      );
    });
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
