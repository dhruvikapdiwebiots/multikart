

import '../../../config.dart';

class AboutUs extends StatelessWidget {
  final aboutUsCtrl = Get.put(AboutUsController());

  AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AboutUsController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: const BackArrowButton(),
          backgroundColor: aboutUsCtrl.appCtrl.appTheme.whiteColor,
          title: LatoFontStyle(
            text: AboutUSFont().aboutUs,
            fontSize: FontSizes.f15,
            fontWeight: FontWeight.w700,
          ),
        ),
        body: SingleChildScrollView(
          child: aboutUsCtrl.aboutUsModel != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AboutUsWidget().commonText(AboutUSFont().introduction,
                        FontWeight.w700, FontSizes.f16),
                    const Space(0, 20),
                   AboutUsWidget().imageLayout(imageAssets.aboutUs),
                    const Space(0, 20),
                    AboutUsWidget().commonText(aboutUsCtrl.aboutUsModel!.title,
                        FontWeight.w600, FontSizes.f14),
                    const Space(0, 20),
                    AboutUsWidget()
                        .commonDescText(aboutUsCtrl.aboutUsModel!.desc1),
                    const Space(0, 20),
                    AboutUsWidget()
                        .commonDescText(aboutUsCtrl.aboutUsModel!.desc2),
                    const Space(0, 30),
                  const AboutUsStatistic(),
                    const Space(0, 30),
                    AboutUsWidget()
                        .commonDescText(aboutUsCtrl.aboutUsModel!.desc3),
                    const Space(0, 20),
                    AboutUsWidget().commonText(AboutUSFont().ourBrandTitle,
                        FontWeight.w700, FontSizes.f16),
                    const Space(0, 20),
                    AboutUsWidget()
                        .commonDescText(aboutUsCtrl.aboutUsModel!.ourBrand),
                    const Space(0, 20),
                    const CommonBrandLayout()
                  ],
                ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15))
              : Container(),
        ),
      );
    });
  }
}
