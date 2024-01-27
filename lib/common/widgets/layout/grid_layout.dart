import 'package:flutter/material.dart';
import 'package:gadgetcity/utils/constants/sizes.dart';

class GGridLayout extends StatelessWidget {
  const GGridLayout({
    Key? key,
    this.mainAxisExtent = 288.0,
    required this.itemBuilder,
    required this.itemCount,
  }) : super(key: key);

  final int itemCount;
  final double mainAxisExtent;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: GSizes.gridViewSpacing,
        crossAxisSpacing: GSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
