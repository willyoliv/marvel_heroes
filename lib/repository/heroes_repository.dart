import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:marvel_heroes/models/character.dart';

class HeroesRepository {
  Future<List<Character>> loadingHeroesJson(String token) async {
    final String response =
        await rootBundle.loadString('assets/application.json');
    final data = await json.decode(response);
    List<Character> characters = [];
    switch (token) {
      case 'heroes':
        for (var heroJson in data['heroes']) {
          Character hero = Character.fromJson(heroJson);
          characters.add(hero);
        }
        break;
      case 'villains':
        for (var heroJson in data['villains']) {
          Character hero = Character.fromJson(heroJson);
          characters.add(hero);
        }
        break;
      case 'antiHeroes':
        for (var heroJson in data['antiHeroes']) {
          Character hero = Character.fromJson(heroJson);
          characters.add(hero);
        }
        break;
      case 'aliens':
        for (var heroJson in data['aliens']) {
          Character hero = Character.fromJson(heroJson);
          characters.add(hero);
        }
        break;
      case 'humans':
        for (var heroJson in data['humans']) {
          Character hero = Character.fromJson(heroJson);
          characters.add(hero);
        }
        break;
      default:
    }

    return characters;
  }
}
