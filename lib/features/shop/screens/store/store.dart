import 'package:flutter/material.dart';
import 'package:gadgetcity/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:gadgetcity/common/widgets/layout/grid_layout.dart';
import 'package:gadgetcity/common/widgets/products.cart/product_card_vertical.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

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

              // Home Card Vertical - grid of popular products
              GGridLayout(
                  itemCount: 30,
                  itemBuilder: (_, index) => const ProductVertical()),
            ],
          ),
        ),
      ),
    );
  }
}
