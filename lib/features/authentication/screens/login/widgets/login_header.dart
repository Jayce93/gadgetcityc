import 'package:flutter/material.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/constants/text_strings.dart';

class GLoginHeader extends StatelessWidget {
  const GLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          GText.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: GSizes.sm),
        Text(
          GText.loginSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
