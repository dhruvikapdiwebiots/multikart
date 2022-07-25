import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:multikart/controllers/pages_controller/terms_condition_controller.dart';

import '../../../config.dart';

class TermsAndCondition extends StatelessWidget {
  final termsConditionCtrl = Get.put(TermsAndConditionController());

  TermsAndCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TermsAndConditionController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: termsConditionCtrl.appCtrl.appTheme.whiteColor,
          title: LatoFontStyle(
            text: CommonTextFont().termsCondition,
            fontSize: FontSizes.f14,
            fontWeight: FontWeight.w700,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              LatoFontStyle(
                text: CommonTextFont().termsConditionForMultikart,
                fontSize: FontSizes.f14,
                fontWeight: FontWeight.w700,
              ),
              ...termsConditionCtrl.termsAndConditionList
                  .asMap()
                  .entries
                  .map((e) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LatoFontStyle(
                      text: e.value.title.toString(),
                      fontSize: FontSizes.f14,
                      color: termsConditionCtrl.appCtrl.appTheme.blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                    const Space(0, 20),
                    ...e.value.description!.map((description) {
                      return Column(
                        children: [
                          LatoFontStyle(
                            text: description.title,
                            fontSize: FontSizes.f14,
                            color: termsConditionCtrl
                                .appCtrl.appTheme.contentColor,
                            fontWeight: FontWeight.w500,
                            overflow: TextOverflow.clip,
                            letterSpacing: .5,
                          ).marginOnly(
                              bottom: AppScreenUtil().screenHeight(15)),
                          if (description.subTitle!.isNotEmpty)
                            ...description.subTitle!.map((e) {
                              return Row();
                            }).toList()
                        ],
                      );
                    }).toList()
                  ],
                );
              }).toList()
            ],
          ),
        ),
      );
    });
  }
}
