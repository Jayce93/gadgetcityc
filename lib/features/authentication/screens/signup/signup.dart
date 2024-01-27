import 'package:flutter/material.dart';
import 'package:gadgetcity/features/authentication/screens/signup/verify_email.dart';

import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/constants/text_strings.dart';
import 'package:gadgetcity/utils/helpers/helpers_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:gadgetcity/utils/constants/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Sign Up Here ",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: GSizes.sapceBtnSections,
            ),

            // FORM
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: GText.signupName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                  const SizedBox(
                    height: GSizes.spaceBtwInputfield,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: GText.signupMail,
                      prefixIcon: Icon(Iconsax.user_edit),
                    ),
                  ),
                  const SizedBox(
                    height: GSizes.spaceBtwInputfield,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: GText.signupPassword,
                      prefixIcon: Icon(Iconsax.call),
                    ),
                  ),
                  const SizedBox(
                    height: GSizes.spaceBtwInputfield,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: GText.signupConfirmPassword,
                      prefixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  const SizedBox(
                    height: GSizes.sapceBtnSections,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 24,
                          height: 24,
                          child:
                              Checkbox(value: true, onChanged: ((value) {}))),
                      const SizedBox(
                        width: GSizes.spaceBtwnItems,
                      ),
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: ' I agree to ',
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                              text: ' Privacy Policy',
                              style:
                                  Theme.of(context).textTheme.bodyMedium!.apply(
                                        color: dark
                                            ? GColors.white
                                            : GColors.primaryColor,
                                        decoration: TextDecoration.underline,
                                        decorationColor: dark
                                            ? GColors.white
                                            : GColors.primaryColor,
                                      )),
                          TextSpan(
                              text: ' and ',
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                              text: ' Terms of use ',
                              style:
                                  Theme.of(context).textTheme.bodyMedium!.apply(
                                        color: dark
                                            ? GColors.white
                                            : GColors.primaryColor,
                                        decoration: TextDecoration.underline,
                                        decorationColor: dark
                                            ? GColors.white
                                            : GColors.primaryColor,
                                      )),
                        ]),
                      ),
                    ],
                  ),
                  //   Sign up button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const VerifyEmailScreen()),
                      child: const Text('Sign Up'),
                    ),
                  ),
                  const SizedBox(
                    width: GSizes.spaceBtwnItems,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
