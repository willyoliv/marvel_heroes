import 'package:flutter/material.dart';
import 'package:marvel_heroes/models/character.dart';
import 'package:marvel_heroes/shared/theme/text/text_styles.dart';

class CardHero extends StatelessWidget {
  final Character character;
  const CardHero({Key? key, required this.character}) : super(key: key);

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
            child: Image.asset(character.imagePath),
          ),
          Positioned(
            bottom: 54,
            left: 12,
            top: 166,
            child: Text(
              character.alterEgo,
              style: TextStyles.cardSubtitle,
            ),
          ),
          Positioned(
            bottom: 12,
            left: 12,
            right: 39,
            top: 173,
            child: Text(
              character.name,
              style: TextStyles.cardTitle,
            ),
          ),
        ],
      ),
    );
  }
}
