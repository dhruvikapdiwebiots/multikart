



import '../../../config.dart';

class Notification extends StatelessWidget {
  final notificationCtrl = Get.put(NotificationController());

  Notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: notificationCtrl.appCtrl.appTheme.whiteColor,
          title: Text(NotificationFont().notification),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
             const NotificationCategory(),
              const Space(0, 20),
              ...notificationCtrl.filterList.asMap().entries.map((e) {
                return NotificationList(notificationModel: e.value,index: e.key,);
              })
            ],
          ),
        ),
      );
    });
  }
}
