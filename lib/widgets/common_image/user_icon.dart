import '../../config.dart';

class UserIcon extends StatelessWidget {
  const UserIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageAssets.user,
      height: AppScreenUtil().size(55),
    );
  }
}
