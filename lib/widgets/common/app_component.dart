import 'package:flutter/material.dart';
import 'package:multikart/controllers/common/app_controller.dart';
import 'package:get/get.dart';

class AppComponent extends StatelessWidget {
  final appCtrl = Get.isRegistered<AppController>() ? Get.find<AppController>() : Get.put(AppController());
  final Widget? child;
  AppComponent({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: GetBuilder<AppController>(
        builder: (ctrl) {
          return Stack(
            children: [
              child!,
              ctrl.isLoading == true
                  ? Center(
                      child: Material(
                        elevation: 3,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(appCtrl.appTheme.txt), // appColor.primaryColor
                              strokeWidth: 3,
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ],
          );
        },
      ),
    );
  }
}
