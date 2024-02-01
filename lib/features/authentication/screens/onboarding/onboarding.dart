import 'package:flutter/material.dart';
import 'package:gadgetcity/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:gadgetcity/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';

import 'package:gadgetcity/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:gadgetcity/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:gadgetcity/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:gadgetcity/utils/constants/image_strings.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                title: GText.onBoardingTextTitle1,
                image: GImages.onboarding1,
                subTitle: GText.onBoardingTextSubTitle1,
              ),
              OnBoardingPage(
                title: GText.onBoardingTextTitle2,
                image: GImages.onboarding2,
                subTitle: GText.onBoardingTextSubTitle2,
              ),
              OnBoardingPage(
                title: GText.onBoardingTextTitle3,
                image: GImages.onboarding3,
                subTitle: GText.onBoardingTextSubTitle3,
              ),
            ],
          ),
          // Positioned Dot Indicator
          // const Positioned(
          //   top: 71,
          //   left: 24,
          //   height: 0,
          //   child: OnBoardingDotIndicator(),
          // ),

          const SizedBox(height: 9),
          // Skip Button
          const OnBoardingSkipButton(),
          // Dot Navigation SmoothPageIndicator

          // / Circular button
          const Positioned(
            bottom: GSizes.defaultSpace,
            left: 0,
            right: 0,
            child: OnboardingNextButton(),
          ),
        ],
      ),
    );
  }
}
