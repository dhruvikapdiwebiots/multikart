import 'package:multikart/config.dart';
import 'package:multikart/views/pages/profile_setting/profile_layouts/user_image.dart';

class ProfileSetting extends StatelessWidget {
  final profileCtrl = Get.put(ProfileController());

  ProfileSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: profileCtrl.appCtrl.appTheme.whiteColor,
          title: Text(ProfileFont().profileSetting),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserImage().alignment(Alignment.center),
              const Space(0, 30),
              LatoFontStyle(
                text: ProfileFont().personalDetail,
                fontSize: FontSizes.f14,
                fontWeight: FontWeight.w700,
                color: profileCtrl.appCtrl.appTheme.blackColor,
              ),
              const Space(0, 20),
              CustomTextFormField(
                radius: 5,
                labelText: ProfileFont().firstName,
                controller: profileCtrl.txtFirstName,
                focusNode: profileCtrl.firstNameFocus,
                keyboardType: TextInputType.name,
                onFieldSubmitted: (value) {
                  AddAddressWidget().fieldFocusChange(context,
                      profileCtrl.firstNameFocus, profileCtrl.lastNameFocus);
                },
              ),
              const Space(0, 30),
              CustomTextFormField(
                radius: 5,
                labelText: ProfileFont().lastName,
                controller: profileCtrl.txtLastName,
                focusNode: profileCtrl.lastNameFocus,
                keyboardType: TextInputType.datetime,
                onFieldSubmitted: (value) {
                  AddAddressWidget().fieldFocusChange(
                      context, profileCtrl.lastNameFocus, profileCtrl.dobFocus);
                },
              ),
              const Space(0, 30),
              CustomTextFormField(
                radius: 5,
                labelText: ProfileFont().dob,
                controller: profileCtrl.txtDob,
                focusNode: profileCtrl.dobFocus,
                keyboardType: TextInputType.datetime,
              ),
              const Space(0, 30),
              SizedBox(
                height: AppScreenUtil().screenHeight(42),
                child: FormField<String>(builder: (FormFieldState<String> state) {
                  return InputDecorator(
                      decoration: InputDecoration(
                          labelText: AddAddressFont().countryRegion,
                          labelStyle: TextStyle(
                              color: profileCtrl.appCtrl.appTheme.contentColor,
                              fontSize: AppScreenUtil().fontSize(16),
                              letterSpacing: .4),
                          contentPadding: EdgeInsets.only(
                            left: AppScreenUtil().screenHeight(18),
                            right: AppScreenUtil().size(11),
                          ),
                          hintText: DeliveryDetailFont().selectCountry,
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(AppScreenUtil().borderRadius(5)),
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: profileCtrl.appCtrl.appTheme.borderColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(AppScreenUtil().borderRadius(5)),
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: profileCtrl.appCtrl.appTheme.borderColor),
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(AppScreenUtil().borderRadius(5)),
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: profileCtrl.appCtrl.appTheme.borderColor),
                          )),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                              value: profileCtrl.countrySelectedValue,
                              isDense: true,
                              isExpanded: true,
                              icon: Icon(Icons.keyboard_arrow_down,
                                  color: profileCtrl.appCtrl.appTheme.borderColor),
                              onChanged: (String? newValue) {
                                profileCtrl.countrySelectedValue = newValue!;
                                profileCtrl.update();
                              },
                              items: profileCtrl.gender.map((String value) {
                                return DropdownMenuItem<String>(
                                    value: value, child: Text(value));
                              }).toList())));
                }),
              )
            ],
          ).width(MediaQuery.of(context).size.width).marginSymmetric(horizontal: AppScreenUtil().screenWidth(15)),
        ),
      );
    });
  }
}
