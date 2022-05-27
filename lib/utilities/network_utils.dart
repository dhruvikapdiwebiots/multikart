import 'package:multikart/utilities/general_utils.dart';
import 'package:multikart/utilities/snack_and_dialogs_utils.dart';

checkApiValidationError(data) {
  dynamic error = data['errors'];
  if (error != null) {
    List keys = error.keys.toList();
    if (keys.isNotEmpty) {
      var msg = '';
      for (int i = 0; i < keys.length; i++) {
        String key = keys[i].toString();
        if (i > 0) msg += '\n';
        msg += error[key][0].toString();
      }
      snackBar(msg, duration: 'long');
    } else {
      snackBar(data['message'], duration: 'long');
    }
  } else {
    snackBar(data['message'], duration: 'long');
  }
}

apiExceptionMethod(controllerName, e) async {
  hideLoading();
  snackBar(trans('something_went_wrong'));
}

