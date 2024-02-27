import '../utils/all_imports.dart';

class CommonButton extends StatelessWidget {
  final Function()? onTap;
  final Color? backGroundColor;
  final Color? fontColor;
  final String? buttonTitle;
  final String? fontFamily;
  final IconData? sufixIcon;
  final bool? isSufixIcon;
  final FontWeight? fontWeight;
  final double? fontSize;
  const CommonButton({
    this.backGroundColor,
    this.buttonTitle,
    this.onTap,
    this.fontSize,
    this.fontWeight,
    this.fontFamily,
    this.sufixIcon,
    this.fontColor,
    this.isSufixIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // padding: EdgeInsets.symmetric(vertical: 12.h),
        width: double.infinity,
        height: 54.h,
        decoration: BoxDecoration(
          color: backGroundColor ?? AppColors.babyBlue,
          borderRadius: BorderRadius.circular(10.r),
        ),
        alignment: Alignment.center,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                buttonTitle ?? "",
                textAlign: TextAlign.center,
                fontSize: fontSize ?? 18.sp,
                maxLines: 1,
                fontWeight: fontWeight ?? FontWeight.w500,
                fontFamily: fontFamily ?? FontFamily.bold,
                color: fontColor ?? AppColors.white,
              ),
              isSufixIcon!
                  ? Padding(
                      padding: EdgeInsets.only(right: 3.w),
                      child: Icon(
                        sufixIcon!,
                        size: 11.w,
                        color: AppColors.white,
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
