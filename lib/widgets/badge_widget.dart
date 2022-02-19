import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Badge extends StatelessWidget {
  final String imageUrl;
  final Color beginColor;
  final Color endColor;

  const Badge({
    Key? key,
    required this.imageUrl,
    required this.beginColor,
    required this.endColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [beginColor, endColor],
        ),
      ),
      child: SvgPicture.asset(
        imageUrl,
        width: 32,
        height: 32,
        color: Colors.white,
      ),
    );
  }
}
