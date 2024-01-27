import 'package:flutter/material.dart';
import 'package:gadgetcity/utils/constants/colors.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/helpers/helpers_functions.dart';
import 'package:iconsax/iconsax.dart';

class GSearchContainer extends StatelessWidget {
  const GSearchContainer({
    Key? key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
  }) : super(key: key);

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: GSizes.defaultSpace,
              right: GSizes.sapceBtnSections,
              top: GSizes.defaultSpace, // Add some top padding to push it down
              bottom:
                  GSizes.defaultSpace, // Add some bottom padding for spacing
            ),
            child: Container(
              width: MediaQuery.of(context)
                  .size
                  .width, // Use MediaQuery to get screen width
              padding: EdgeInsets.symmetric(
                vertical:
                    GSizes.sm, // Adjust the vertical padding for reduced height
                horizontal: GSizes.md,
              ),
              decoration: BoxDecoration(
                color: showBackground
                    ? dark
                        ? GColors.dark
                        : GColors.light
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(
                    GSizes.cardRadiusLg * 2), // Increase the borderRadius
                border: showBorder ? Border.all(color: GColors.grey) : null,
              ),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: GColors.darkerGrey,
                  ),
                  const SizedBox(
                    width: GSizes.sapceBtnSections,
                  ),
                  Expanded(
                    child: Text(
                      text,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontSize: 14.0, // Adjust the font size as needed
                          ),
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                ],
              ),
            ),
          ),
        ),
        Icon(Iconsax.notification),
      ],
    );
  }
}
