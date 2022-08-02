import '../../../config.dart';

class NotificationShimmer extends StatelessWidget {
  const NotificationShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<AppController>(
      builder: (appCtrl) {
        return Shimmer.fromColors(
          baseColor: appCtrl.appTheme.greyLight25,
          highlightColor: appCtrl.appTheme.gray,child: Column(
          children: const[
             CommonBoxTextShimmer(),
             Space(0,20),

          ],
        ),);
      }
    );
  }
}
