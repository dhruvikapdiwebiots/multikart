import '../../../../config.dart';

class OtpTextForm extends StatelessWidget {
  final TextEditingController? controller;
  final bool? autoFocus;
  const OtpTextForm({Key? key,this.controller,this.autoFocus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
        builder: (appCtrl) {
          return SizedBox(
            height: 55,
            width: 58,
            child: TextFormField(
              autofocus: autoFocus!,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              controller: controller,
              maxLength: 1,
              cursorColor: appCtrl.appTheme.lightGray,
              decoration:  InputDecoration(
                  fillColor: appCtrl.appTheme.lightGray,
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide(color: appCtrl.appTheme.lightGray)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: appCtrl.appTheme.lightGray)),
                  disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: appCtrl.appTheme.lightGray)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: appCtrl.appTheme.lightGray)),
                  counterText: '',
                  hintStyle: TextStyle(color: appCtrl.appTheme.blackColor, fontSize: 20.0)),
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }else{
                  FocusScope.of(context).previousFocus();
                }
              },
            ),
          );
        }
    );
  }
}
