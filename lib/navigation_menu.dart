import 'package:flutter/material.dart';
import 'package:gadgetcity/features/personalizartion/screens/settings/settings.dart';

import 'package:gadgetcity/features/shop/screens/home/home.dart';
import 'package:gadgetcity/features/shop/screens/store/store.dart';
import 'package:gadgetcity/features/shop/screens/store/wishlist/wishlist.dart';
import 'package:gadgetcity/utils/constants/colors.dart';

import 'package:gadgetcity/utils/helpers/helpers_functions.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = GHelperFunctions.isDarkMode(context);
    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
              height: 80,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) =>
                  controller.selectedIndex.value = index,
              backgroundColor: darkMode
                  ? GColors.white.withOpacity(0.1)
                  : GColors.black.withOpacity(0.1),
              destinations: const [
                NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
                NavigationDestination(
                    icon: Icon(Iconsax.category), label: 'Categories'),
                NavigationDestination(
                    icon: Icon(Iconsax.shopping_cart), label: 'Cart'),
                NavigationDestination(
                    icon: Icon(Iconsax.heart), label: 'Favourites'),
                NavigationDestination(
                    icon: Icon(Iconsax.user), label: 'Profile'),
              ]),
        ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const Categories(),
    Container(color: Colors.yellow),
    const FavouriteScreen(),
    const SettingsScreen(),
  ];
}
