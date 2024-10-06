import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText({
    required this.text,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.textStyle,
    this.fontWeight,
    this.fontSize,
    this.height,
    this.decoration,
    this.decorationStyle,
    this.decorationColor,
    this.fontFamily,
    super.key,
  });

  final String text;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final Color? color;
  final TextStyle? textStyle;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? height;
  final TextDecoration? decoration;
  final TextDecorationStyle? decorationStyle;
  final Color? decorationColor;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle == null
          ? TextStyle(
              color: color,
              fontWeight: fontWeight,
              fontSize: fontSize,
              height: height,
              decoration: decoration,
              decorationStyle: decorationStyle,
              decorationColor: decorationColor,
              fontFamily: fontFamily,
            )
          : textStyle!.apply(
              color: color,
              decoration: decoration,
              decorationStyle: decorationStyle,
              decorationColor: decorationColor,
            ),
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}
