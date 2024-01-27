import 'package:flutter/material.dart';
import 'package:gadgetcity/features/authentication/controllers/onboarding/onboarding_controller.dart';

import 'package:gadgetcity/utils/constants/colors.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/device/device_utility.dart';

import 'package:gadgetcity/utils/helpers/helpers_functions.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
            bottom: GDeviceUtils.getBottomNavigationBarHeight() - 20),
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 2 * GSizes.defaultSpace,
          child: ElevatedButton(
            onPressed: () => OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: const EdgeInsets.symmetric(
                  vertical: 16.0), // Adjust the vertical padding
              backgroundColor: dark ? GColors.primaryColor : Colors.black,
            ),
            child: const Text('Continue'),
          ),
        ),
      ),
    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:gadgetcity/features/authentication/controllers/onboarding_controllers.dart';
// import 'package:gadgetcity/utils/constants/colors.dart';
// import 'package:gadgetcity/utils/constants/sizes.dart';
// import 'package:gadgetcity/utils/device/device_utiltity.dart';
// import 'package:gadgetcity/utils/helpers/helper_functions.dart';

// class OnboardingNextButton extends StatelessWidget {
//   const OnboardingNextButton({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final dark = GHelperFunctions.isDarkMode(context);
//     return Positioned(
//       // bottom: GDeviceUtils.getBottomNavigationBarHeight() - 20,
//       // Raised up a bit
//       // right: GSizes.defaultSpace,
//       child: ElevatedButton(
//         onPressed: () => OnBoardingController.instance.nextPage(),
//         style: ElevatedButton.styleFrom(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30.0), // Adjust the radius
//           ),
//           backgroundColor: dark ? GColors.primaryColor : Colors.black,
//         ),
//         child: const Text('Continue'), // Use 'Continue' instead of an icon
//       ),
//     );
//   }
// }
