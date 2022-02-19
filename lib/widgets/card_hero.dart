import 'package:flutter/material.dart';
import 'package:marvel_heroes/shared/theme/text/text_styles.dart';

class CardHero extends StatelessWidget {
  const CardHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 140,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        shape: BoxShape.rectangle,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset("assets/chars/spider-man.png"),
          ),
          Positioned(
            bottom: 54,
            left: 12,
            child: Text(
              "Peter Parker",
              style: TextStyles.cardSubtitle,
            ),
          ),
          Positioned(
            bottom: 12,
            left: 12,
            right: 39,
            top: 178,
            child: Text(
              "Peter Parker",
              style: TextStyles.cardTitle,
            ),
          ),
        ],
      ),
    );
  }
}
