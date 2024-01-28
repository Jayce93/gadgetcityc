import 'package:flutter/material.dart';
import 'package:gadgetcity/common/widgets/icons/g_circular_icons.dart';
import 'package:gadgetcity/common/widgets/layout/grid_layout.dart';
import 'package:gadgetcity/common/widgets/products.cart/product_card_vertical.dart';
import 'package:gadgetcity/features/shop/screens/home/home.dart';
import 'package:gadgetcity/features/shop/screens/home/widgets/g_appbar.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          GCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
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
