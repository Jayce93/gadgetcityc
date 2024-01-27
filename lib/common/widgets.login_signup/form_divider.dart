import 'package:flutter/material.dart';
import 'package:gadgetcity/utils/constants/colors.dart';
import 'package:gadgetcity/utils/helpers/helpers_functions.dart';

class GFormDivider extends StatelessWidget {
  const GFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? GColors.darkGrey : GColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(dividerText, style: const TextStyle(color: Colors.blue)
            // Theme.of(context).textTheme.labelMedium,
            ),
        Flexible(
          child: Divider(
            color: dark ? GColors.darkGrey : GColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        )
      ],
    );
  }
}
