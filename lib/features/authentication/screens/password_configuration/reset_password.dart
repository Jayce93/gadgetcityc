import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gadgetcity/utils/constants/image_strings.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';

import 'package:gadgetcity/utils/helpers/helpers_functions.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});
  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(GSizes.defaultSpace),
        child: Column(
          children: [
            Image(
              image: const AssetImage(GImages.verifyemail1),
              width: GHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: GSizes.sapceBtnSections),

            // Title and subtitle
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: GSizes.spaceBtwnItems,
            ),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: GSizes.spaceBtwnItems,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressed,
                child: const Text('Continue'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
