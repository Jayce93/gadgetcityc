import 'package:flutter/material.dart';

class GCircularImage extends StatelessWidget {
  const GCircularImage({
    Key? key,
    required this.image,
    required this.width,
    required this.height,
    required this.padding,
  }) : super(key: key);

  final String image;
  final double width;
  final double height;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
