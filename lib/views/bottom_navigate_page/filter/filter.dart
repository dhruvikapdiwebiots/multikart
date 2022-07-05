import 'dart:developer';

import 'package:multikart/views/bottom_navigate_page/filter/filter_layouts/size_layout.dart';
import '../../../config.dart';

class Filter extends StatelessWidget {
  final filterCtrl = Get.put(FilterController());

  Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RangeValues _currentRangeValues = const RangeValues(0, 100);

    return GetBuilder<FilterController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(FilterFont().filters),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          actions: const [
            CloseSquareIcon(),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FilterWidget().titleText(FilterFont().shortBy),
              const Space(0, 20),

              //short by layout
              const SortByLayout(),
              const Space(0, 20),

              FilterWidget().titleText(FilterFont().brandsFilter),
              //brand layout
              const BrandLayout(),
              const Space(0, 20),
              FilterWidget().titleText(FilterFont().size),
              // size layout
              const SizeLayout(),
              const Space(0, 20),
              FilterWidget().titleText(FilterFont().price),

              const Space(0, 20),

              Stack(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...filterCtrl.data.asMap().entries.map((e) {
                        return (_currentRangeValues.start.toString() ==
                                e.value["val"].toString())
                            ? Container(
                                height: AppScreenUtil().screenHeight(25),
                                width: AppScreenUtil().size(45),
                                decoration: BoxDecoration(
                                    color: Color(0xFFFF4C3B).withOpacity(.2),
                                    borderRadius: BorderRadius.circular(
                                        AppScreenUtil().borderRadius(5))),
                                padding: EdgeInsets.all(AppScreenUtil().size(5)),
                                alignment: Alignment.center,
                                child: Text(
                                    "\$${_currentRangeValues.start.toString()}"),
                              )
                            : Container();
                      }).toList()
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...filterCtrl.data.asMap().entries.map((e) {
                        return (_currentRangeValues.end.toString() ==
                            e.value["val"].toString())
                            ? Container(
                          height: AppScreenUtil().screenHeight(25),
                          width: AppScreenUtil().size(45),
                          decoration: BoxDecoration(
                              color: Color(0xFFFF4C3B).withOpacity(.2),
                              borderRadius: BorderRadius.circular(
                                  AppScreenUtil().borderRadius(5))),
                          padding: EdgeInsets.all(AppScreenUtil().size(5)),
                          alignment: Alignment.center,
                          child: Text("\$${_currentRangeValues.end.toString()}"),
                        )
                            : Container();
                      }).toList()
                    ],
                  ),
                ],
              ),
              SliderTheme(
                data: SliderThemeData(
                    activeTrackColor: filterCtrl.appCtrl.appTheme.primary,
                    inactiveTrackColor: filterCtrl.appCtrl.appTheme.lightGray,
                    activeTickMarkColor: filterCtrl.appCtrl.appTheme.primary,
                    inactiveTickMarkColor:
                        filterCtrl.appCtrl.appTheme.lightGray,
                    valueIndicatorColor: filterCtrl.appCtrl.appTheme.primary,
                    valueIndicatorShape: RectangularSliderValueIndicatorShape(),
                    valueIndicatorTextStyle:
                        TextStyle(color: filterCtrl.appCtrl.appTheme.white),
                    rangeThumbShape: CustomThumbShape(),
                    trackHeight: 5.0,
                    showValueIndicator: ShowValueIndicator.never),
                child: RangeSlider(
                  values: _currentRangeValues,
                  min: 0,
                  max: 100,
                  divisions: 10,
                  onChanged: (RangeValues values) {
                    _currentRangeValues = values;
                    print(values);
                    filterCtrl.update();
                  },
                ),
              ),
            ],
          ).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
        ),
      );
    });
  }
}

class CustomThumbShape implements RangeSliderThumbShape {
  final appCtrl = Get.isRegistered<AppController>()
      ? Get.find<AppController>()
      : Get.put(AppController());

  CustomThumbShape({
    this.radius = 15.0,
    this.ringColor = Colors.red,
  });

  /// Outer radius of thumb

  final double radius;

  /// Color of ring

  final Color ringColor;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(radius);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      bool? isDiscrete,
      bool? isEnabled,
      bool? isOnTop,
      TextDirection? textDirection,
      required SliderThemeData sliderTheme,
      Thumb? thumb,
      bool? isPressed}) {
    final Canvas canvas = context.canvas;
    var paint1 = Paint()..color = appCtrl.appTheme.primary;
    var paint2 = Paint()
      ..color = appCtrl.appTheme.white
      ..strokeWidth = 2.7
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, 20 * .5, paint1);
    canvas.drawCircle(center, 18 * .42, paint2);
  }
}
