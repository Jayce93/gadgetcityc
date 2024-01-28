import 'package:flutter/material.dart';
import 'package:gadgetcity/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:gadgetcity/common/widgets/custom_shapes/containers/curved_edges_widget.dart';
import 'package:gadgetcity/utils/constants/colors.dart';

class GPrimaryHeaderContainer extends StatelessWidget {
  const GPrimaryHeaderContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GCurvedEdgesWidget(
        child: SizedBox(
      height: 400,
      child: Container(
        color: GColors.primaryColor,
        child: Stack(children: [
          Positioned(
            top: -150,
            right: -250,
            child: CircularContainer(
              backgroundColor: GColors.textWhite.withOpacity(0.1),
            ),
          ),
          Positioned(
            top: 100,
            right: -300,
            child: CircularContainer(
              backgroundColor: GColors.textWhite.withOpacity(0.1),
            ),
          ),
          child,
        ]),
      ),
    ));
  }
}
