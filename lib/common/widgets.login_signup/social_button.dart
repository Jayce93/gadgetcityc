import 'package:flutter/material.dart';
import 'package:gadgetcity/utils/constants/colors.dart';
import 'package:gadgetcity/utils/constants/image_strings.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';

// ignore: camel_case_types
class SocialLogin extends StatelessWidget {
  const SocialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: GColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: GSizes.iconmd,
              height: GSizes.iconmd,
              image: AssetImage(GImages.google1),
            ),
          ),
        ),
        const SizedBox(width: GSizes.spaceBtwnItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: GColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: GSizes.iconmd,
              height: GSizes.iconmd,
              image: AssetImage(GImages.apple),
            ),
          ),
        ),
        const SizedBox(width: GSizes.spaceBtwnItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: GColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: GSizes.iconmd,
              height: GSizes.iconmd,
              image: AssetImage(GImages.facebook),
            ),
          ),
        ),
        const SizedBox(width: GSizes.spaceBtwnItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: GColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: GSizes.iconmd,
              height: GSizes.iconmd,
              image: AssetImage(GImages.x),
            ),
          ),
        ),
        const SizedBox(width: GSizes.spaceBtwnItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: GColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: GSizes.iconmd,
              height: GSizes.iconmd,
              image: AssetImage(GImages.yahoo),
            ),
          ),
        ),
      ],
    );
  }
}
