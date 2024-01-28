import 'package:flutter/material.dart';
import 'package:gadgetcity/common/widgets/custom_shapes/containers/curved_edges.dart';
// Replace with the actual path to your file

class GCurvedEdgesWidget extends StatelessWidget {
  const GCurvedEdgesWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: GCustomCurvedEdges(),
      child: child,
    );
  }
}
