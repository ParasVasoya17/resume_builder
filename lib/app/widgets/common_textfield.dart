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
    this.titleColor = AppColors.black,
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
        style: TextStyle(color: AppColors.black, fontFamily: FontFamily.semiBold, fontSize: 14.sp, fontWeight: FontWeight.w600),
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
                      height: 24.h,
                      width: 24.w,
                      child: widget.obscureText ? const Icon(Icons.remove_red_eye) : const Icon(Icons.remove_red_eye_outlined),
                    ),
                  )),
          hintStyle: TextStyle(
            color: AppColors.black,
            fontFamily: FontFamily.medium,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          labelStyle: TextStyle(
            color: AppColors.black,
            fontFamily: FontFamily.medium,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: widget.prefixIcon == null ? 15.w : 2.w),
          fillColor: widget.fillColor ?? AppColors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: widget.borderColor ?? AppColors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: widget.borderColor ?? AppColors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: widget.borderColor ?? AppColors.black),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: widget.borderColor ?? AppColors.black),
          ),
        ),
      ),
    );
  }
}
