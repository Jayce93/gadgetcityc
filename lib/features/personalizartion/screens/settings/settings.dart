import 'package:flutter/material.dart';
import 'package:gadgetcity/common/widgets/list_tiles/settings_menu.dart';
import 'package:gadgetcity/common/widgets/list_tiles/user_profile.dart';
import 'package:gadgetcity/common/widgets/products.cart/widgets/circular_image.dart';
import 'package:gadgetcity/common/widgets/texts/section_heading.dart';
import 'package:gadgetcity/features/shop/screens/home/widgets/g_appbar.dart';
import 'package:gadgetcity/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:gadgetcity/utils/constants/colors.dart';
import 'package:gadgetcity/utils/constants/image_strings.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // / --- HHeader
            GPrimaryHeaderContainer(
              child: Column(
                children: [
                  GAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: GColors.white),
                    ),
                  ),
                  const SizedBox(
                    height: GSizes.sapceBtnSections,
                  ),
                  // User Profile
                  const GUserProfile(),
                  const SizedBox(
                    height: GSizes.sapceBtnSections,
                  )
                ],
              ),
            ),
            // / -- Body
            Padding(
              padding: const EdgeInsets.all(GSizes.defaultSpace),
              child: Column(
                children: [
                  // -- Account Settings
                  const GSectionHeading(
                    title: ' Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: GSizes.spaceBtwnItems,
                  ),
                  GSettingsMenuTile(
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    icon: Iconsax.safe_home,
                    onTap: () {},
                  ),
                  GSettingsMenuTile(
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    icon: Iconsax.safe_home,
                    onTap: () {},
                  ),
                  GSettingsMenuTile(
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    icon: Iconsax.safe_home,
                    onTap: () {},
                  ),
                  GSettingsMenuTile(
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    icon: Iconsax.safe_home,
                    onTap: () {},
                  ),
                  GSettingsMenuTile(
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    icon: Iconsax.safe_home,
                    onTap: () {},
                  ),
                  GSettingsMenuTile(
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    icon: Iconsax.safe_home,
                    onTap: () {},
                  ),
                  // / App Settings
                  const SizedBox(
                    height: GSizes.sapceBtnSections,
                  ),
                  GSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: GSizes.spaceBtwnItems,
                  ),
                  GSettingsMenuTile(
                    title: 'Load Data',
                    subTitle: 'Upload Data to your cloud firebase ',
                    icon: Iconsax.document_upload,
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
