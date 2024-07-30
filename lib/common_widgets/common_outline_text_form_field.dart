import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../styles/app_text_styles.dart';

class CommonOutlineTextFormField extends StatelessWidget {
  const CommonOutlineTextFormField({
    this.hintText,
    this.obscureText = false,
    this.suffixIcon,
    this.height,
    this.validator,
    this.controller,
    super.key,
  });

  final String? hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final double? height;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        style: AppTextStyles.body1_500,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.grayF4,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.grayF4,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.grayF4,
            ),
          ),
          hintText: hintText,
          hintStyle: AppTextStyles.body1_500.apply(color: AppColors.gray88),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          suffixIcon: suffixIcon,
          errorStyle: AppTextStyles.body2.apply(
            color: AppColors.redFF3B30,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.grayF4,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.redFF3B30,
            ),
          ),
          focusColor: AppColors.main,
        ),
        validator: validator,
      ),
    );
  }
}
