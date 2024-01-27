import 'package:flutter/material.dart';
import 'package:gadgetcity/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/helpers/helpers_functions.dart';

// / @@@@@@@@@@@ THE ONBOARDING PAGE CLASS @@@@@@@@@@@@
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(GSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content
          children: [
            Image(
              width: GHelperFunctions.screenWidth() * 0.8,
              height: 300,
              image: AssetImage(image),
            ),
            const SizedBox(height: GSizes.spaceBtwnItems),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: GSizes.spaceBtwnItems),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.labelSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const OnBoardingDotIndicator(),
          ],
        ));
  }
}
