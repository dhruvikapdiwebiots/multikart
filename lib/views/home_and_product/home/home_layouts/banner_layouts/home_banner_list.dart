

import '../../../../../config.dart';

class HomeBannerList extends StatelessWidget {
  const HomeBannerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeCtrl) {
      return Expanded(
        child: Column(
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 1.6,
                  viewportFraction: 1,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  onPageChanged: (index, reason) {
                    homeCtrl.current = index;
                    homeCtrl.update();
                  }),
              itemCount: homeCtrl.bannerList.length,
              itemBuilder:
                  (BuildContext context, int index, int pageViewIndex) {
                return homeCtrl.bannerList.isNotEmpty
                    ? HomeBannerData(
                        data: homeCtrl.bannerList[index],
                      )
                    : Container();
              },
            ),
            const Space(0, 20),
            HomeDotIndicator()
          ],
        ),
      );
    });
  }
}
