import '../../config.dart';

class HomeProductAppBar extends StatelessWidget with PreferredSizeWidget {
  final GestureTapCallback? onTap;
  const HomeProductAppBar({Key? key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: MenuRoundedIcon(onTap: onTap,),
        backgroundColor: appCtrl.appTheme.whiteColor,
        titleSpacing: 0,
        title: const LogoImage(),
        actions:  const [AppBarActionLayout(),],
      );
    });
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
