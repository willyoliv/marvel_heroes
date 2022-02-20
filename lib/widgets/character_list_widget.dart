import 'package:flutter/material.dart';
import 'package:marvel_heroes/models/character.dart';
import 'package:marvel_heroes/shared/theme/text/text_styles.dart';

import 'card_hero_widget.dart';

class CharecterList extends StatelessWidget {
  final String sectionTitle;
  final List<Character> characters;
  const CharecterList({
    Key? key,
    required this.sectionTitle,
    required this.characters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sectionTitle,
                style: TextStyles.sectionTitle,
              ),
              Text(
                "Ver tudo",
                style: TextStyles.description,
              ),
            ],
          ),
        ),
        Container(
          height: 270,
          margin: const EdgeInsets.only(top: 16, left: 24),
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: characters.length,
              itemBuilder: (context, index) {
                return CardHero(
                  character: characters[index],
                );
              }),
        )
      ],
    );
  }
}
