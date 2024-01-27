import 'package:flutter/material.dart';
import 'package:gadgetcity/utils/constants/colors.dart';

import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/helpers/helpers_functions.dart';

class GCircularIcon extends StatelessWidget {
  const GCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = GSizes.lg,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : GHelperFunctions.isDarkMode(context)
                ? GColors.black.withOpacity(0.9)
                : GColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
