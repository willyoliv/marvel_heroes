import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BadgeWidget extends StatelessWidget {
  final String imageUrl;
  final Color beginColor;
  final Color endColor;

  const BadgeWidget({
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
        boxShadow: [
          BoxShadow(
            color: beginColor.withOpacity(0.15),
            offset: const Offset(0.0, 10.0),
            blurRadius: 10,
            spreadRadius: 0,
          )
        ],
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
