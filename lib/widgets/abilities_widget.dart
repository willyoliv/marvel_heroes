import 'package:flutter/material.dart';
import 'package:marvel_heroes/models/abilities.dart';
import 'package:marvel_heroes/shared/theme/text/text_styles.dart';
import 'package:marvel_heroes/widgets/power_level_widget.dart';

class AbilitiesWidget extends StatelessWidget {
  final Abilities abilities;
  const AbilitiesWidget({Key? key, required this.abilities}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      height: 171,
      width: 306,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Força",
                style: TextStyles.ability,
              ),
              PowerLevelWidget(powerLevel: abilities.force),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Inteligência",
                style: TextStyles.ability,
              ),
              PowerLevelWidget(powerLevel: abilities.intelligence),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Agilidade",
                style: TextStyles.ability,
              ),
              PowerLevelWidget(powerLevel: abilities.agility),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Resistência",
                style: TextStyles.ability,
              ),
              PowerLevelWidget(powerLevel: abilities.endurance),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Velocidade",
                style: TextStyles.ability,
              ),
              PowerLevelWidget(powerLevel: abilities.velocity),
            ],
          ),
        ],
      ),
    );
  }
}
