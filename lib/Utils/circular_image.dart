


import 'package:flutter/material.dart';
import 'package:web_portfolio/Utils/color_constant.dart';
import 'package:web_portfolio/Utils/dummy_data.dart';

class CircularImage extends StatelessWidget {
  final double radius;
  const CircularImage({super.key, required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: radius,
        width: radius,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            border: Border.all(width: 1, color: appColorPink)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Align(
            alignment: Alignment.center,
            heightFactor: 0.5,
            child: Image.network(sourceImageLink,width: 70,height: 70,fit: BoxFit.fill),
          ),
        )
    );
  }
}
