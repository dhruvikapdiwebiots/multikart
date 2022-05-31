import '../../config.dart';

class PasswordTextForm extends StatelessWidget {
  final TextEditingController? controller;
  final bool? passwordVisible;
  final FocusNode? passwordFocus;
  final FormFieldValidator<String>? validator;
  final Widget? suffixIcon;
  const PasswordTextForm({Key? key,this.passwordVisible,this.controller,this.passwordFocus,this.suffixIcon,this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppScreenUtil().screenWidth(15)),
      child: CustomTextFormField(
        radius: 5,
        labelText: CommonTextFont().password,
        controller: controller,
        obscureText: passwordVisible!,
        focusNode: passwordFocus,
        validator: validator,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
