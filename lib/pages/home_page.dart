import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 64,
            padding: const EdgeInsets.only(left: 24, right: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  "assets/icons/menu.svg",
                  color: Color(0xFF313140),
                ),
                SvgPicture.asset(
                  "assets/icons/marvel.svg",
                  color: Color(0xFFED1D24),
                  height: 26,
                  width: 71,
                ),
                SvgPicture.asset(
                  "assets/icons/search.svg",
                  color: Color(0xFF313140),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(24),
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bem vindo ao Marvel Heroes"),
                Text("Escolha o seu\npersonagem")
              ],
            ),
          ),
        ],
      )),
    );
  }
}
