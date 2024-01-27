import 'package:flutter/material.dart';
import 'package:gadgetcity/features/authentication/screens/password_configuration/reset_password.dart';

import 'package:gadgetcity/utils/constants/image_strings.dart';
import 'package:get/get.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(GSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(
              'Forget Password',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: GSizes.spaceBtwnItems,
            ),
            Text(
              'Click on the below button to recieve a reset mail after fillig your email address',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: GSizes.sapceBtnSections * 2,
            ),

            // Text Field
            TextFormField(
              decoration: const InputDecoration(
                  labelText: GText.homeAppBartitle,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            // Submit Form
            const SizedBox(
              height: GSizes.sapceBtnSections,
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(() => ResetPassword(
                        image: GImages.darkAppLogo,
                        title: 'Reset Password',
                        subTitle: 'Your password will be reseted ',
                        onPressed: () {},
                      )),
                  child: const Text('Done')),
            ),
            const SizedBox(
              height: GSizes.spaceBtwnItems,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {}, child: const Text('Resend Email')),
            )
          ],
        ),
      ),
    );
  }
}
