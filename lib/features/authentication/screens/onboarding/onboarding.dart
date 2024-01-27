import 'package:flutter/material.dart';
import 'package:gadgetcity/features/authentication/controllers/onboarding/onboarding_controller.dart';

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
                image: GImages.onboarding1,
                title: GText.onBoardingTextTitle1,
                subTitle: GText.onBoardingTextSubTitle1,
              ),
              OnBoardingPage(
                image: GImages.onboarding2,
                title: GText.onBoardingTextTitle2,
                subTitle: GText.onBoardingTextSubTitle2,
              ),
              OnBoardingPage(
                image: GImages.onboarding3,
                title: GText.onBoardingTextTitle3,
                subTitle: GText.onBoardingTextSubTitle3,
              ),
            ],
          ),

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
