import 'package:edit_x/styles/app_colors.dart';
import 'package:flutter/material.dart';

class CommonAppBar extends AppBar {
  CommonAppBar({
    super.leading,
    super.actions,
    super.centerTitle,
    super.actionsIconTheme,
    super.automaticallyImplyLeading,
    super.backgroundColor,
    super.bottom,
    super.bottomOpacity,
    super.clipBehavior,
    super.elevation,
    super.excludeHeaderSemantics,
    super.flexibleSpace,
    super.forceMaterialTransparency,
    super.foregroundColor,
    super.iconTheme,
    super.title,
    super.titleTextStyle,
    super.toolbarHeight,
    super.leadingWidth,
    super.notificationPredicate,
    super.primary,
    super.scrolledUnderElevation,
    super.shadowColor,
    super.shape,
    super.surfaceTintColor,
    super.systemOverlayStyle,
    super.titleSpacing,
    super.toolbarOpacity,
    super.toolbarTextStyle,
    super.key,
  });

  @override
  Color? get backgroundColor => AppColors.transparent;

  @override
  double? get elevation => 0;
}
