import 'package:like_button/like_button.dart';

import '../../config.dart';

class LinkHeartIcon extends StatelessWidget {
  final LikeButtonTapCallback? onTap;
  final bool? isLiked;
  const LinkHeartIcon({Key? key,this.onTap,this.isLiked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (appCtrl) {
        return GetBuilder<HomeController>(
          builder: (homeCtrl) {
            return Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppScreenUtil().size(5),
                  vertical: AppScreenUtil().size(5)),
              decoration: BoxDecoration(
                  color: appCtrl.appTheme.whiteColor,
                  borderRadius: BorderRadius.circular(
                      AppScreenUtil().borderRadius(50))),
              child: LikeButton(
                likeCountPadding: EdgeInsets.zero,
                isLiked: isLiked,
                size: AppScreenUtil().size(12),
                circleColor: CircleColor(
                  start: Colors.white,
                  end: appCtrl.appTheme.primary,
                ),
                onTap: onTap,
                bubblesColor: BubblesColor(
                  dotPrimaryColor:
                  appCtrl.appTheme.contentColor,
                  dotSecondaryColor:
                  appCtrl.appTheme.primary,
                ),
                bubblesSize: AppScreenUtil().size(45),
                likeBuilder: (bool isLiked) {
                  return isLiked
                      ? const HeartColor()
                      : const HeartIcon();
                },
              ),
            );
          }
        );
      }
    );
  }
}