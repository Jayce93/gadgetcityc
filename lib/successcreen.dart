import 'package:flutter/material.dart';
import 'package:gadgetcity/common/styles/spacing_styles.dart';
import 'package:gadgetcity/utils/constants/image_strings.dart';

import 'package:gadgetcity/utils/constants/sizes.dart';

import 'package:gadgetcity/utils/helpers/helpers_functions.dart';

class SuccesScreen extends StatelessWidget {
  const SuccesScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});
  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: GSpacingStyles.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(GImages.verifyemail2),
                width: GHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: GSizes.sapceBtnSections),

              // Title and subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: GSizes.spaceBtwnItems,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: GSizes.spaceBtwnItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
