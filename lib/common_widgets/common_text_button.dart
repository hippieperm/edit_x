import 'package:edit_x/common_widgets/common_text.dart';
import 'package:edit_x/styles/app_colors.dart';
import 'package:flutter/material.dart';

class CommonTextButton extends StatelessWidget {
  const CommonTextButton({
    required this.onPressed,
    required this.commonText,
    this.height,
    this.width,
    this.backgroundColor = AppColors.main,
    this.enabled,
    this.borderRadius = 8,
    super.key,
  });

  final double? width;
  final double? height;
  final double borderRadius;
  final Color backgroundColor;

  final CommonText commonText;

  final bool? enabled;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: enabled == null
            ? onPressed
            : enabled == true
                ? onPressed
                : null,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              enabled == false ? AppColors.grayD7 : backgroundColor,
          disabledBackgroundColor:
              enabled == false ? AppColors.grayD7 : backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: commonText,
      ),
    );
  }
}
