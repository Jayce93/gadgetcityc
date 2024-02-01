import 'package:flutter/material.dart';
import 'package:gadgetcity/common/widgets/custom_shapes/containers/curved_edges_widget.dart';
import 'package:gadgetcity/common/widgets/images/g_rounded_images.dart';
import 'package:gadgetcity/utils/constants/colors.dart';
import 'package:gadgetcity/utils/constants/image_strings.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:gadgetcity/utils/helpers/helpers_functions.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GCurvedEdgesWidget(
                child: Container(
              color: dark ? GColors.darkerGrey : GColors.light,
              child: const Stack(children: [
                SizedBox(
                  height: 400,
                  child: Padding(
                    padding: EdgeInsets.all(GSizes.productImageRadius * 2),
                    child:
                        Center(child: Image(image: AssetImage(GImages.watch))),
                  ),
                ),
                RoundedImage(
                  imageUrl: GImages.subwatch1,
                  onPressed: () {},
                )
              ]),
            ))
          ],
        ),
      ),
    );
  }
}
