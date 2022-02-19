import 'package:marvel_heroes/models/height.dart';
import 'package:marvel_heroes/models/weight.dart';

class Caracteristics {
  Caracteristics({
    required this.birth,
    required this.weight,
    required this.height,
    required this.universe,
  });
  late final String birth;
  late final Weight weight;
  late final Height height;
  late final String universe;

  Caracteristics.fromJson(Map<String, dynamic> json) {
    birth = json['birth'];
    weight = Weight.fromJson(json['weight']);
    height = Height.fromJson(json['height']);
    universe = json['universe'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['birth'] = birth;
    _data['weight'] = weight.toJson();
    _data['height'] = height.toJson();
    _data['universe'] = universe;
    return _data;
  }
}
