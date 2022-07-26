import 'package:flutter/cupertino.dart';

import '../../config.dart';

class BackArrowButton extends StatelessWidget {
  const BackArrowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(CupertinoIcons.arrow_left)
        .gestures(onTap: () => Get.back());
  }
}
