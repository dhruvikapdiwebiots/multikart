import 'package:multikart/views/bottom_navigate_page/profile/profile_layouts/profile_card.dart';
import 'package:multikart/views/bottom_navigate_page/profile/profile_layouts/profile_user.dart';

import '../../../config.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final profileCtrl = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(builder: (_) {
      return Directionality(
        textDirection: profileCtrl.appCtrl.isRTL
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const ProfileUser(),
                ...profileCtrl.drawerList.asMap().entries.map((e) {
                  return ProfileCard(
                    data: e.value,
                    index: e.key,
                    lastIndex: profileCtrl.drawerList.length -1,
                    onTap: () => profileCtrl.goToPage(e.key),
                  );
                }).toList(),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: AppScreenUtil().screenHeight(10)),
                  margin: EdgeInsets.symmetric(horizontal: AppScreenUtil().screenWidth(15),vertical: AppScreenUtil().screenHeight(15)),
                  decoration: BoxDecoration(
                    border: Border.all(color: profileCtrl.appCtrl.appTheme.contentColor,width: 1.5),
                    borderRadius: BorderRadius.circular(AppScreenUtil().borderRadius(5))
                  ),
                  child: LatoFontStyle(text: CommonTextFont().logOut,fontSize: FontSizes.f16,),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
