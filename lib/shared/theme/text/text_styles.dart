import 'package:flutter/material.dart';
import 'package:marvel_heroes/shared/theme/colors/app_colors.dart';

abstract class TextStyles {
  static TextStyle profileTitle = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w900,
    fontSize: 40,
    color: Colors.white,
  );

  static TextStyle homeTitle = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w900,
    fontSize: 32,
    color: Colors.black,
  );

  static TextStyle cardTitle = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w900,
    fontSize: 20,
    color: Colors.white,
  );

  static TextStyle sectionTitle = TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: AppColors.primaryRed,
  );

  static TextStyle sectionAbility = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.white,
  );

  static TextStyle profileSubtitle = TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: AppColors.primaryGrey,
  );

  static TextStyle homeSubtitle = TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColors.primaryGrey,
  );

  static TextStyle description = TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.primaryGrey,
  );

  static TextStyle caracteristic = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: Colors.black,
  );

  static TextStyle ability = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.normal,
    fontSize: 12,
    color: Colors.white,
  );

  static TextStyle cardSubtitle = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w500,
    fontSize: 10,
    color: Colors.white,
  );
}
