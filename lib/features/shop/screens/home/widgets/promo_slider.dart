import 'package:flutter/material.dart';
import 'package:gadgetcity/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:gadgetcity/common/widgets/images/g_rounded_images.dart';
import 'package:gadgetcity/features/authentication/controllers/onboarding/home_controllers.dart';
import 'package:gadgetcity/utils/constants/colors.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map((url) => RoundedImage(
                    imageUrl: url,
                    onPressed: () {},
                  ))
              .toList(),
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
        ),
        const SizedBox(
          height: GSizes.spaceBtwnItems,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                CircularContainer(
                    width: 20,
                    height: 4,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? GColors.primaryColor
                        : GColors.grey),
            ],
          ),
        )
      ],
    );
  }
}
