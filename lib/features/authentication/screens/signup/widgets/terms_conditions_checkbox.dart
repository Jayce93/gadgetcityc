import 'package:flutter/material.dart';
import 'package:gadgetcity/utils/constants/colors.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/constants/text_strings.dart';
import 'package:gadgetcity/utils/helpers/helpers_functions.dart';

class GTermsandConditionCheckbox extends StatelessWidget {
  const GTermsandConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: ((value) {}))),
        const SizedBox(
          width: GSizes.spaceBtwnItems,
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: GText.privacyPolicy,
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: ' ${GText.privacyPolicylink}',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? GColors.white : GColors.primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? GColors.white : GColors.primaryColor,
                    )),
            TextSpan(
                text: ' and ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: ' ${GText.termsandConditionlink} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? GColors.white : GColors.primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? GColors.white : GColors.primaryColor,
                    )),
          ]),
        ),
      ],
    );
  }
}
