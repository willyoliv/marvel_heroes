import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_heroes/models/character.dart';
import 'package:marvel_heroes/shared/theme/colors/app_colors.dart';
import 'package:marvel_heroes/shared/theme/text/text_styles.dart';

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
      body: SingleChildScrollView(
        child: Container(
          // height: 812,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                character.imagePath,
                width: 415,
                height: 812,
                fit: BoxFit.fitHeight,
              ),
              Positioned(
                top: 60,
                left: 24,
                child: SvgPicture.asset(
                  "assets/icons/back.svg",
                  color: Colors.white,
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
                child: Container(
                  height: 95,
                  width: 150,
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
                      Container(
                        height: 60,
                        width: 48,
                        alignment: Alignment.topCenter,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/age.svg",
                              color: AppColors.primaryGrey,
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(height: 12),
                            Text(
                                getAge(character.caracteristics.birth) +
                                    " anos",
                                style: TextStyles.ability),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 48,
                        alignment: Alignment.topCenter,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/weight.svg",
                              color: AppColors.primaryGrey,
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(height: 12),
                            Text("${character.caracteristics.weight.value}kg",
                                style: TextStyles.ability),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 48,
                        alignment: Alignment.topCenter,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/height.svg",
                              color: AppColors.primaryGrey,
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(height: 12),
                            Text("${character.caracteristics.height.value}m",
                                style: TextStyles.ability),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 48,
                        alignment: Alignment.topCenter,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/universe.svg",
                              color: AppColors.primaryGrey,
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(height: 12),
                            Text(
                              character.caracteristics.universe,
                              style: TextStyles.ability,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
