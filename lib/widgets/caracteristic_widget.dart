import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_heroes/shared/theme/colors/app_colors.dart';
import 'package:marvel_heroes/shared/theme/text/text_styles.dart';

class CaracteristicWidget extends StatelessWidget {
  final String imagaPath;
  final String text;
  const CaracteristicWidget({
    Key? key,
    required this.imagaPath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 48,
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imagaPath,
            color: AppColors.primaryGrey,
            height: 24,
            width: 24,
          ),
          const SizedBox(height: 12),
          FittedBox(
            child: Text(text, style: TextStyles.ability),
          ),
        ],
      ),
    );
  }
}
