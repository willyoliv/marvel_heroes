import 'abilities.dart';
import 'caracteristics.dart';

class Hero {
  Hero({
    required this.name,
    required this.alterEgo,
    required this.imagePath,
    required this.biography,
    required this.caracteristics,
    required this.abilities,
    required this.movies,
  });
  late final String name;
  late final String alterEgo;
  late final String imagePath;
  late final String biography;
  late final Caracteristics caracteristics;
  late final Abilities abilities;
  late final List<String> movies;

  Hero.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    alterEgo = json['alterEgo'];
    imagePath = json['imagePath'];
    biography = json['biography'];
    caracteristics = Caracteristics.fromJson(json['caracteristics']);
    abilities = Abilities.fromJson(json['abilities']);
    movies = List.castFrom<dynamic, String>(json['movies']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['alterEgo'] = alterEgo;
    _data['imagePath'] = imagePath;
    _data['biography'] = biography;
    _data['caracteristics'] = caracteristics.toJson();
    _data['abilities'] = abilities.toJson();
    _data['movies'] = movies;
    return _data;
  }
}
