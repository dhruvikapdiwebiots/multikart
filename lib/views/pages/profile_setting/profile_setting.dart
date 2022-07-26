import 'package:multikart/config.dart';

class ProfileSetting extends StatelessWidget {
  final profileCtrl = Get.put(ProfileController());

  ProfileSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: const BackArrowButton(),
          backgroundColor: profileCtrl.appCtrl.appTheme.whiteColor,
          title: Text(ProfileFont().profileSetting),
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //user image
                  const UserImage().alignment(Alignment.center),
                  const Space(0, 30),

                  //personal detail
                  const PersonalDetailLayout(),
                  const Space(0, 30),
                  const BorderLineLayout(),
                  //security layout
                  const SecurityLayout(),
                  const Space(0, 50),
                ],
              )
                  .width(MediaQuery.of(context).size.width)
                  .marginOnly(top: Insets.i20, bottom: Insets.i30),
            ),
            BottomLayout(
              firstButtonText: ProfileFont().cancel,
              secondButtonText: ProfileFont().saveDetails,
            )
          ],
        ),
      );
    });
  }
}
