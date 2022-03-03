import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_heroes/models/character.dart';
import 'package:marvel_heroes/shared/theme/colors/app_colors.dart';
import 'package:marvel_heroes/shared/theme/text/text_styles.dart';
import 'package:marvel_heroes/widgets/abilities_widget.dart';
import 'package:marvel_heroes/widgets/caracteristic_widget.dart';
import 'package:marvel_heroes/widgets/movie_list_widget.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  String getAge(String birth) {
    int year = DateTime.now().year;
    int result = year - int.parse(birth);
    return result.toString();
  }

  @override
  Widget build(BuildContext context) {
    final character = ModalRoute.of(context)!.settings.arguments as Character;
    return Scaffold(
      backgroundColor: Colors.black,
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowIndicator();
          return false;
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 812,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          colors: [
                            Color(0xFFFFFFFF),
                            Color(0xFF000000),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ).createShader(bounds);
                      },
                      child: Image.asset(
                        character.imagePath,
                        width: 415,
                        height: 812,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 24,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                          "assets/icons/back.svg",
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 330,
                      left: 24,
                      child: Text(
                        character.alterEgo,
                        style: TextStyles.profileSubtitle,
                      ),
                    ),
                    Positioned(
                      top: 356,
                      left: 24,
                      child: SizedBox(
                        height: 95,
                        width: 180,
                        child: Text(
                          character.name,
                          style: TextStyles.profileTitle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 484,
                      child: SizedBox(
                        width: 327,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CaracteristicWidget(
                                imagaPath: "assets/icons/age.svg",
                                text: getAge(character.caracteristics.birth) +
                                    " anos"),
                            CaracteristicWidget(
                                imagaPath: "assets/icons/weight.svg",
                                text:
                                    "${character.caracteristics.weight.value}kg"),
                            CaracteristicWidget(
                                imagaPath: "assets/icons/height.svg",
                                text:
                                    "${character.caracteristics.height.value}m"),
                            CaracteristicWidget(
                              imagaPath: "assets/icons/universe.svg",
                              text: character.caracteristics.universe,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 556,
                      child: SizedBox(
                        width: 327,
                        height: 250,
                        child: Text(
                          character.biography,
                          style: TextStyles.description,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 32, bottom: 24, left: 24, right: 24),
                child: Text(
                  "Habilidades",
                  style: TextStyles.sectionAbility,
                ),
              ),
              AbilitiesWidget(
                abilities: character.abilities,
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 32, bottom: 24, left: 24, right: 24),
                child: Text(
                  "Filmes",
                  style: TextStyles.sectionAbility,
                ),
              ),
              MovieList(movies: character.movies),
            ],
          ),
        ),
      ),
    );
  }
}
