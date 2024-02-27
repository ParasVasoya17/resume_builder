//ignore: must_be_immutable
import 'package:resume_builder_flutter/app/utils/all_imports.dart';

class CommonTextFiled extends StatefulWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final String? hintText;
  final String? prefixIcon;
  String title;
  bool isTitle;
  final Widget? suffixIcon;
  final bool isMaxLines;
  final int? maxLines;
  final Color? titleColor;
  final Color? fillColor;
  final Color? borderColor;
  final FontWeight? titleFontWeight;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final bool autofocus;
  bool enabled;
  bool obscureText;

  TextCapitalization textCapitalization;
  bool suffixVisibility;
  CommonTextFiled({
    super.key,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    this.isMaxLines = false,
    this.maxLines,
    this.hintText,
    this.obscureText = false,
    this.suffixVisibility = false,
    this.enabled = true,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.titleColor = AppColors.darkBlueText,
    this.fillColor,
    this.borderColor,
    this.title = "",
    this.textCapitalization = TextCapitalization.none,
    this.isTitle = true,
    this.titleFontWeight = FontWeight.w500,
    this.focusNode,
    this.autofocus = false,
  });

  @override
  State<CommonTextFiled> createState() => _CommonTextFiledState();
}

class _CommonTextFiledState extends State<CommonTextFiled> {
  toggle() {
    setState(() {
      widget.obscureText = !widget.obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: widget.controller,
        textCapitalization: widget.textCapitalization,
        onChanged: widget.onChanged,
        obscureText: widget.obscureText,
        textInputAction: widget.textInputAction,
        maxLines: widget.isMaxLines ? widget.maxLines : null,
        enabled: widget.enabled,
        focusNode: widget.focusNode,
        keyboardType: widget.keyboardType,
        autofocus: widget.autofocus,
        style: TextStyle(color: AppColors.text1BlueColor, fontFamily: FontFamily.semiBold, fontSize: 14.sp, fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          hintText: widget.hintText ?? "",
          prefixIcon: widget.prefixIcon == null
              ? null
              : Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 10.w),
                  child: Image.asset(
                    widget.prefixIcon!,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
          suffixIcon: widget.suffixVisibility == false
              ? widget.suffixIcon
              : Visibility(
                  visible: widget.suffixVisibility,
                  child: GestureDetector(
                    onTap: toggle,
                    child: Container(
                      margin: EdgeInsets.all(14.sp),
                      child: Image.asset(
                        widget.obscureText ? AppImages.eyeSlash : AppImages.eye,
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                  )),
          hintStyle: TextStyle(
            color: AppColors.text4BlueColor,
            fontFamily: FontFamily.medium,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          labelStyle: TextStyle(
            color: AppColors.text4BlueColor,
            fontFamily: FontFamily.medium,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: widget.prefixIcon == null ? 15.w : 2.w),
          fillColor: widget.fillColor ?? AppColors.textButton,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: widget.borderColor ?? AppColors.buttonOutline),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: widget.borderColor ?? AppColors.buttonOutline),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: widget.borderColor ?? AppColors.buttonOutline),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: widget.borderColor ?? AppColors.buttonOutline),
          ),
        ),
      ),
    );
  }
}

//ignore: must_be_immutable
class CommonMultiLineTextFiled extends StatefulWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final String? hintText;
  final String? prefixIcon;
  final String? suffixText;
  String title;
  bool isTitle;
  final Widget? suffixIcon;
  final bool isMaxLines;
  final int? maxLines;
  final Color? titleColor;
  final TextInputAction? textInputAction;
  bool enabled;
  bool obscureText;
  bool suffixVisibility;
  CommonMultiLineTextFiled({
    super.key,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    this.isMaxLines = false,
    this.maxLines,
    this.hintText,
    this.obscureText = false,
    this.suffixVisibility = false,
    this.enabled = true,
    this.textInputAction = TextInputAction.next,
    this.titleColor = AppColors.darkBlueText,
    this.title = "",
    this.suffixText,
    this.isTitle = true,
  });

  @override
  State<CommonMultiLineTextFiled> createState() => _CommonMultiLineTextFiledState();
}

class _CommonMultiLineTextFiledState extends State<CommonMultiLineTextFiled> {
  toggle() {
    setState(() {
      widget.obscureText = !widget.obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        obscureText: widget.obscureText,
        textInputAction: widget.textInputAction,
        maxLines: widget.isMaxLines ? widget.maxLines : null,
        enabled: widget.enabled,
        style: TextStyle(
          color: AppColors.text1BlueColor,
          fontFamily: FontFamily.medium,
          fontWeight: FontWeight.w500,
          fontSize: 16.sp,
        ),
        decoration: InputDecoration(
          hintText: widget.hintText ?? "",
          prefixIcon: widget.prefixIcon == null
              ? null
              : Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 10.w),
                  child: Image.asset(
                    widget.prefixIcon!,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
          suffixIcon: widget.suffixVisibility == false
              ? widget.suffixIcon
              : Visibility(
                  visible: widget.suffixVisibility,
                  child: GestureDetector(
                    onTap: toggle,
                    child: Container(
                      margin: EdgeInsets.all(14.sp),
                      child: Image.asset(
                        widget.obscureText ? AppImages.eye : AppImages.eyeSlash,
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                  )),
          hintStyle: TextStyle(
            color: AppColors.text4BlueColor,
            fontFamily: FontFamily.medium,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          labelStyle: TextStyle(
            color: AppColors.text4BlueColor,
            fontFamily: FontFamily.medium,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          suffixStyle: TextStyle(
            color: AppColors.text4BlueColor,
            fontFamily: FontFamily.medium,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          suffixText: widget.suffixText ?? "",
          contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 2.w),
          fillColor: AppColors.textButton,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
