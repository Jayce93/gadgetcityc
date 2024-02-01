import 'package:flutter/material.dart';
import 'package:gadgetcity/common/styles/shadows.dart';
import 'package:gadgetcity/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:gadgetcity/common/widgets/icons/g_circular_icons.dart';
import 'package:gadgetcity/common/widgets/images/g_rounded_images.dart';
import 'package:gadgetcity/common/widgets/products.cart/widgets/product_title_text.dart';
import 'package:gadgetcity/features/shop/screens/product_details/product_details.dart';

import 'package:gadgetcity/utils/constants/colors.dart';
import 'package:gadgetcity/utils/constants/image_strings.dart';

import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/helpers/helpers_functions.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

class ProductVertical extends StatelessWidget {
  const ProductVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetail()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [GShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(GSizes.productImageRadius),
          color: dark ? GColors.darkerGrey : GColors.white,
        ),
        child: Column(
          children: [
            // Thumbmail - Wishlist and Discount tag
            CircularContainer(
              height: 180,
              padding: const EdgeInsets.all(GSizes.sm),
              backgroundColor: dark ? GColors.dark : GColors.light,
              child: Stack(
                children: [
                  RoundedImage(
                      imageUrl: GImages.product1,
                      applyImageRadius: true,
                      onPressed: () {}),

                  // // Sales Tag
                  // Positioned(
                  //   top: 12,
                  //   child: CircularContainer(
                  //     radius: GSizes.sm,
                  //     backgroundColor: GColors.secondary.withOpacity(0.8),
                  //     padding: EdgeInsets.symmetric(
                  //         horizontal: GSizes.sm, vertical: GSizes.xs),
                  //     child: Text(
                  //       '25%',
                  //       style: Theme.of(context)
                  //           .textTheme
                  //           .labelLarge!
                  //           .apply(color: GColors.black),
                  //     ),
                  //   ),
                  // ),
                  const Positioned(
                    right: 0,
                    top: 0,
                    child: GCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            // const SizedBox(
            //   height: GSizes.spaceBtwnItems / 2,
            // ),
            // Details
            Padding(
              padding: const EdgeInsets.only(left: GSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const GProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: GSizes.spaceBtwnItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(
                        width: GSizes.xs,
                      ),
                      const Icon(
                        Iconsax.verify5,
                        color: GColors.primaryColor,
                        size: GSizes.iconxs,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Prices
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button's functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            GSizes.cardRadiusMd), // Set the radius here
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 3.0,
                      ),
                      backgroundColor: Colors.blue.shade500,
                    ),
                    child: const Text(
                      'Add To Cart',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
