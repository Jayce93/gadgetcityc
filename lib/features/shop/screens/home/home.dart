import 'package:flutter/material.dart';
import 'package:gadgetcity/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:gadgetcity/common/widgets/layout/grid_layout.dart';
import 'package:gadgetcity/common/widgets/products.cart/product_card_vertical.dart';
import 'package:gadgetcity/common/widgets/texts/section_heading.dart';
import 'package:gadgetcity/features/shop/screens/home/widgets/promo_slider.dart';

import 'package:gadgetcity/utils/constants/image_strings.dart';

import 'package:gadgetcity/utils/constants/sizes.dart';

import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // searchbar and cart
              const GSearchContainer(
                text: 'Search In Store ',
                icon: Iconsax.search_normal,
              ),
              const SizedBox(
                height: GSizes.spaceBtwnItems,
              ),
              // Body - Banner with page indicator
              const Padding(
                  padding: EdgeInsets.all(GSizes.defaultSpace),
                  child: PromoSlider(
                    banners: [
                      GImages.carousel1,
                      GImages.carousel2,
                      GImages.carousel1,
                    ],
                  )),
              const SizedBox(
                height: GSizes.sapceBtnSections,
              ),

              // the section heading
              GSectionHeading(
                title: 'Popular Products',
                OnPressed: () {},
              ),
              const SizedBox(
                height: GSizes.spaceBtwnItems,
              ),

              // Home Card Vertical - grid of popular products
              GGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const ProductVertical()),
            ],
          ),
        ),
      ),
    );
  }
}
