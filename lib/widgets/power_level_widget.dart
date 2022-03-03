import 'package:flutter/material.dart';
import 'package:marvel_heroes/shared/theme/colors/app_colors.dart';

class PowerLevelWidget extends StatelessWidget {
  final int powerLevel;
  const PowerLevelWidget({Key? key, required this.powerLevel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 216,
      height: 15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 44,
        itemBuilder: (context, index) {
          double proportion = 44 / 100;
          int numberOfBars = (proportion * powerLevel).floor();
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
            height: numberOfBars == index ? 10 : 4,
            width: 1,
            color: numberOfBars >= index
                ? AppColors.primarySilver
                : AppColors.primaryDark,
          );
        },
      ),
    );
  }
}
