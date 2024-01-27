import 'package:flutter/material.dart';
import 'package:gadgetcity/common/styles/shadows.dart';
import 'package:gadgetcity/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:gadgetcity/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:gadgetcity/common/widgets/images/g_rounded_images.dart';
import 'package:gadgetcity/common/widgets/layout/grid_layout.dart';
import 'package:gadgetcity/common/widgets/products.cart/widgets/product_title_text.dart';

import 'package:gadgetcity/utils/constants/colors.dart';
import 'package:gadgetcity/utils/constants/image_strings.dart';

import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/helpers/helpers_functions.dart';
import 'package:iconsax/iconsax.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            centerTitle: true, // Center the title horizontally
            backgroundColor: Colors.white, // Set your desired background color
          ),
          body: SingleChildScrollView(
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                GSearchContainer(
                  text: 'Search In Store ',
                  icon: Iconsax.search_normal,
                ),
                SizedBox(
                  height: GSizes.spaceBtwnItems,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
