import 'package:flutter/material.dart';
import 'package:gadgetcity/features/authentication/controllers/onboarding/onboarding_controller.dart';

import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/device/device_utility.dart';

// @@@@@@@@@@@ THE SKIP BUTTON WIGDETS

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: GDeviceUtils.getAppBarHeight(),
      right: GSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
