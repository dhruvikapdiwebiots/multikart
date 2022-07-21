import 'package:multikart/config.dart';
import 'package:multikart/views/checkout/card_balance/card_balance_layout/card_layout.dart';
import 'package:multikart/views/checkout/card_balance/card_balance_layout/wallet_layout.dart';

class CardBalance extends StatelessWidget {
  final cardCtrl = Get.put(CardBalanceController());

  CardBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CardBalanceController>(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: cardCtrl.appCtrl.appTheme.whiteColor,
          title: Text(CardBalanceFont().payments),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider.builder(
                options: CarouselOptions(
                    autoPlay: false,
                    aspectRatio: 10.2 / 8,
                    viewportFraction: .90,
                    onPageChanged: (index, reason) {
                      cardCtrl.currentIndex = index;
                      cardCtrl.update();
                    }),
                itemCount: AppArray().cardList.length,
                itemBuilder:
                    (BuildContext context, int index, int pageViewIndex) {
                  return CardLayout(
                    data: AppArray().cardList[index],
                    index: index,
                    currentIndex: cardCtrl.currentIndex,
                  );
                },
              ),
              const BorderLineLayout(),
              const Space(0, 20),
             const WalletLayout()
            ],
          ),
        ),
      );
    });
  }
}
