import 'package:flutter/material.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class GSignUpForm extends StatelessWidget {
  const GSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      TextFormField(
        decoration: const InputDecoration(
          labelText: GText.homeAppBarTItle,
          prefixIcon: Icon(Iconsax.user),
        ),
      ),
      const SizedBox(
        height: GSizes.spaceBtwInputfield,
      ),
      TextFormField(
        decoration: const InputDecoration(
          labelText: GText.homeAppBarTItle,
          prefixIcon: Icon(Iconsax.user_edit),
        ),
      ),
      const SizedBox(
        height: GSizes.spaceBtwInputfield,
      ),
      TextFormField(
        decoration: const InputDecoration(
          labelText: GText.homeAppBarTItle,
          prefixIcon: Icon(Iconsax.call),
        ),
      ),
      const SizedBox(
        height: GSizes.spaceBtwInputfield,
      ),
      TextFormField(
        decoration: const InputDecoration(
          labelText: GText.homeAppBarTItle,
          prefixIcon: Icon(Iconsax.eye_slash),
        ),
      ),
      const SizedBox(
        height: GSizes.sapceBtnSections,
      ),
    ]));
  }
}
