import 'package:flutter/material.dart';
import 'package:gadgetcity/utils/constants/colors.dart';

class GShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: GColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));

  static final horizontaalProductShadow = BoxShadow(
      color: GColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
