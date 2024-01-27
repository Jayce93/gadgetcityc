import 'package:flutter/material.dart';
import 'package:gadgetcity/features/authentication/screens/signup/signup.dart';
import 'package:gadgetcity/signupscreen.dart';

import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:gadgetcity/navigation_menu.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: GSizes.sapceBtnSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: GText.onBoardingTextSubTitle1),
            ),
            const SizedBox(
              height: GSizes.spaceBtwInputfield,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: GText.onBoardingTextSubTitle1,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(
              height: GSizes.spaceBtwInputfield / 2,
            ),
            //  Remember me and forget password

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                const Text('Remember Me'),

                // Forget Password
                TextButton(
                  onPressed: () => Get.to(() => const SignUp()),
                  child: const Text('Forget Password'),
                ),
              ],
            ),
            const SizedBox(
              height: GSizes.sapceBtnSections,
            ),
            // Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(198, 56, 39, 156)),
                ),
                child: const Text('Sign In'),
              ),
            ),
            const SizedBox(
              height: GSizes.spaceBtwnItems,
            ),

            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUpScreen()),
                child: const Text('Sign Up'),
              ),
            ),
            const SizedBox(
              height: GSizes.spaceBtwnItems,
            ),
          ],
        ),
      ),
    );
  }
}
