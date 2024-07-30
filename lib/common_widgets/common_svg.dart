import 'package:edit_x/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonSvg extends StatelessWidget {
  const CommonSvg({
    required this.width,
    required this.height,
    required this.assets,
    this.color = AppColors.main,
    this.blendMode = BlendMode.srcIn,
    this.onTap,
    super.key,
  });

  final Color color;
  final BlendMode blendMode;
  final double width;
  final double height;
  final String assets;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        assets,
        width: width,
        height: height,
        colorFilter: ColorFilter.mode(color, blendMode),
      ),
    );
  }
}
