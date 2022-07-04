import '../../config.dart';

class SearchTextBox extends StatelessWidget {
  final TextEditingController? controller;
  const SearchTextBox({Key? key,this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (appCtrl) {
      return SizedBox(
        height: AppScreenUtil().screenHeight(40),
        child: TextFormField(
          
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            hintText: "Search",
            hintStyle: TextStyle(
              fontSize: CommonTextFontSize.textSizeMedium,
              color: appCtrl.appTheme.contentColor,
              fontWeight: FontWeight.w700,
            ),
            border: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(AppScreenUtil().borderRadius(5)),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.zero,
            prefix: const Space(10, 0),
            suffixIconConstraints: BoxConstraints(
              minHeight: AppScreenUtil().size(45),
              minWidth: AppScreenUtil().size(45),
            ),
            prefixIconConstraints: BoxConstraints(
              minHeight: AppScreenUtil().size(42),
              minWidth: AppScreenUtil().size(42),
            ),
            prefixIcon: const SearchTextIcon().paddingDirectional(
                start: AppScreenUtil().size(10),
                end: AppScreenUtil().size(10),
                bottom: AppScreenUtil().size(5)),
            suffixIcon: const CameraIcon().paddingDirectional(
                start: AppScreenUtil().size(5),
                end: AppScreenUtil().size(10),
                top: AppScreenUtil().size(4)),
            fillColor: appCtrl.appTheme.greyLight25.withOpacity(.6),
          ),
        ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
      );
    });
  }
}
