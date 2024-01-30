import 'package:flutter/material.dart';
import 'package:gadgetcity/common/widgets/products.cart/widgets/circular_image.dart';
import 'package:gadgetcity/utils/constants/colors.dart';
import 'package:gadgetcity/utils/constants/image_strings.dart';
import 'package:iconsax/iconsax.dart';

class GUserProfile extends StatelessWidget {
  const GUserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const GCircularImage(
        image: GImages.user1,
        width: 50,
        height: 50,
        padding: 0,
      ),
      subtitle: Text(
        'gadgetcity@gadgetcityapp.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: GColors.white),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Iconsax.edit,
            color: GColors.white,
          )),
    );
  }
}
