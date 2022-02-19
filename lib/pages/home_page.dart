import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marvel_heroes/shared/theme/colors/app_colors.dart';
import 'package:marvel_heroes/shared/theme/text/text_styles.dart';
import 'package:marvel_heroes/widgets/badge_widget.dart';
import 'package:marvel_heroes/widgets/card_hero.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: null,
        titleSpacing: 0.0,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          height: 64,
          padding: const EdgeInsets.only(left: 24, right: 23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                "assets/icons/menu.svg",
                color: AppColors.primaryDark,
              ),
              SvgPicture.asset(
                "assets/icons/marvel.svg",
                color: AppColors.primaryRed,
                height: 26,
                width: 71,
              ),
              SvgPicture.asset(
                "assets/icons/search.svg",
                color: AppColors.primaryDark,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin:
                  const EdgeInsets.all(24) + const EdgeInsets.only(bottom: 12),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bem vindo ao Marvel Heroes",
                    style: TextStyles.homeSubtitle,
                  ),
                  Text(
                    "Escolha o seu\npersonagem",
                    style: TextStyles.homeTitle,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              height: 56,
              width: 328,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Badge(
                    imageUrl: "assets/icons/vector.svg",
                    beginColor: Color(0xFF005BEA),
                    endColor: Color(0xFF00C6FB),
                  ),
                  Badge(
                    imageUrl: "assets/icons/villain.svg",
                    beginColor: Color(0xFFED1D24),
                    endColor: Color(0xFFED1F69),
                  ),
                  Badge(
                    imageUrl: "assets/icons/antihero.svg",
                    beginColor: Color(0xFFB224EF),
                    endColor: Color(0xFF7579FF),
                  ),
                  Badge(
                    imageUrl: "assets/icons/alien.svg",
                    beginColor: Color(0xFF0BA360),
                    endColor: Color(0xFF3CBA92),
                  ),
                  Badge(
                    imageUrl: "assets/icons/human.svg",
                    beginColor: Color(0xFFFF7EB3),
                    endColor: Color(0xFFFF758C),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Heróis",
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
              height: 230,
              margin: const EdgeInsets.only(top: 16, left: 24),
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return CardHero();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
