import 'package:resume_builder_flutter/app/utils/all_imports.dart';

class AppText extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final double fontSize;
  final Color? color;
  final FontWeight fontWeight;
  final double? letterSpacing;
  final double? height;
  final TextDecoration textDecoration;
  final TextAlign textAlign;
  final int maxLines;
  final FontStyle fontStyle;

  AppText(
    this.text, {
    this.fontSize = 14,
    this.color,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = FontFamily.medium,
    this.letterSpacing,
    this.textDecoration = TextDecoration.none,
    this.textAlign = TextAlign.start,
    this.height = 0,
    this.maxLines = 1000,
    this.fontStyle = FontStyle.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        height: height,
        color: color ?? AppColors.text4BlueColor,
        fontFamily: fontFamily ?? FontFamily.medium,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        decoration: textDecoration,
      ),
    );
  }
}
