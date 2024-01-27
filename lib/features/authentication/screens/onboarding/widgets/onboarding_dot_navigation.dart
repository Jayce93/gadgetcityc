import 'package:flutter/material.dart';
import 'package:gadgetcity/features/authentication/controllers/onboarding/onboarding_controller.dart';

import 'package:gadgetcity/utils/constants/colors.dart';

import 'package:gadgetcity/utils/helpers/helpers_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotIndicator extends StatelessWidget {
  const OnBoardingDotIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = GHelperFunctions.isDarkMode(context);
    return Center(
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? GColors.white : GColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
