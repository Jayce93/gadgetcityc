import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:gadgetcity/features/authentication/screens/login/login.dart';
import 'package:gadgetcity/successcreen.dart';
import 'package:gadgetcity/utils/constants/image_strings.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/constants/text_strings.dart';
import 'package:gadgetcity/utils/helpers/helpers_functions.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(GImages.verifyemail1),
                width: GHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: GSizes.sapceBtnSections),

              // Title and subtitle
              Text(
                'Verify your email address',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: GSizes.spaceBtwnItems,
              ),
              Text(
                'support@gadgetcity.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: GSizes.spaceBtwnItems,
              ),
              Text(
                'Congratulations your Account Awaits .Verify your Email to start shopping and experience a word of unrivaled deals and Personalised offer ',
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: GSizes.spaceBtwnItems,
              ),
              // Title and Subtitle

              // Button

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccesScreen(
                      image: GImages.verifyemail1,
                      title: GText.onBoardingTextSubTitle2,
                      subTitle: GText.onBoardingTextTitle1,
                      onPressed: () => Get.to(() => const LoginScreen()))),
                  child: const Text('Continue'),
                ),
              ),
              const SizedBox(
                height: GSizes.spaceBtwnItems,
              ),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Resend Email'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
