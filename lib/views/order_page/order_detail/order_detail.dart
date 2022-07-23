import 'dart:math';

import 'package:multikart/config.dart';
import 'package:multikart/controllers/order_controller/order_detail_controller.dart';
import 'package:multikart/views/order_page/order_detail/order_detail_utils/order_detail_constant.dart';
import 'package:multikart/views/order_page/order_success/order_success_layouts/order_success_card.dart';
import 'package:timelines/timelines.dart';

const kTileHeight = 50.0;

const completeColor = Color(0xff5e6172);
const inProgressColor = Color(0xff5ec792);
const todoColor = Color(0xffd1d2d7);

class OrderDetail extends StatefulWidget {
  OrderDetail({Key? key}) : super(key: key);

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  final orderDetailCtrl = Get.put(OrderDetailController());
  ScrollController? _scrollController;
  bool lastStatus = true;
  double height = 200;

  void _scrollListener() {
    if (_isShrink != lastStatus) {
      setState(() {
        lastStatus = _isShrink;
      });
    }
  }

  bool get _isShrink {
    return _scrollController!.hasClients &&
        _scrollController!.offset > (height - kToolbarHeight);
  }

  int _processIndex = 2;

  Color getColor(int index) {
    if (index == _processIndex) {
      return orderDetailCtrl.appCtrl.appTheme.borderColor;
    } else if (index < _processIndex) {
      return completeColor;
    } else {
      return todoColor;
    }
  }

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController!.removeListener(_scrollListener);
    _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderDetailController>(builder: (_) {
      return Scaffold(
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: height,
                backgroundColor: orderDetailCtrl.appCtrl.appTheme.whiteColor,
                floating: false,
                pinned: true,
                title: _isShrink
                    ? Container()
                    : LatoFontStyle(
                    text: OrderDetailFont().orderDetail,
                    color: orderDetailCtrl.appCtrl.appTheme.blackColor),
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  title: LatoFontStyle(
                      text: OrderDetailFont().orderDetail,
                      color: _isShrink
                          ? orderDetailCtrl.appCtrl.appTheme.blackColor
                          : orderDetailCtrl.appCtrl.appTheme.white)
                      .marginOnly(bottom: Insets.i2),
                  background: Image.asset(
                    imageAssets.mapSectionBG,
                  ),
                ),
              ),
            ];
          },
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 2,
                color: orderDetailCtrl.appCtrl.appTheme.whiteColor,
                child: OrderSuccessCard(
                  orderSummaryModel: orderSummaryArray[0],
                  index: 0,
                  isDivider: false,
                ).marginSymmetric(vertical: AppScreenUtil().screenHeight(15)),
              ),
              const Space(0, 20),
              Expanded(
                child: FixedTimeline.tileBuilder(
                  theme: TimelineThemeData(
                    nodePosition: 0,
                    color: const Color(0xff989898),
                    indicatorTheme: const IndicatorThemeData(
                      position: 0,
                      size: 20.0,
                    ),
                    connectorTheme: const ConnectorThemeData(
                      thickness: 2.5,
                    ),
                  ),
                  builder: TimelineTileBuilder.connected(
                    connectionDirection: ConnectionDirection.before,
                    itemCount: orderDetailCtrl.data.length,
                    contentsBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: Insets.i10,vertical: Insets.i5),
                              decoration: BoxDecoration(
                                color: orderDetailCtrl.appCtrl.appTheme.greyLight25,
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: Text(
                                orderDetailCtrl.data[index]['title'].toString(),

                              ),
                            ),
                           LatoFontStyle(
                             text: orderDetailCtrl.data[index]['date'].toString(),
                             fontSize: FontSizes.f14,
                           ).paddingOnly(top: Insets.i10,bottom: Insets.i15),
                          ],
                        ),
                      );
                    },
                    indicatorBuilder: (_, index) {
                      print(
                          'ind : ${orderDetailCtrl.data[index]['isCompete']}');
                      if (orderDetailCtrl.data[index]['isCompete'] == true) {
                        return const DotIndicator(
                          color: Color(0xff66c97f),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 12.0,
                          ),
                        );
                      } else {
                        return const OutlinedDotIndicator(
                          borderWidth: 2.5,
                        );
                      }
                    },
                    connectorBuilder: (_, index, ___) {
                      /*   return  SolidLineConnector(

                        color: orderDetailCtrl.data[index]['isCompete'] == true ? const Color(0xff66c97f) : null,
                      );*/
                      List<Color> gradientColors;
                      (orderDetailCtrl.data[index]['isCompete'] == true) ?
                      gradientColors = [ orderDetailCtrl.appCtrl.appTheme.contentColor,
                        orderDetailCtrl.appCtrl.appTheme.primary] : gradientColors =[orderDetailCtrl.appCtrl.appTheme.contentColor];
                      return DecoratedLineConnector(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: gradientColors,
                            ),
                          ));
                    },
                  ),
                )
                ,
              ),
            ],
          ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
        ),
      );
    });
  }
}