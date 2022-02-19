class Abilities {
  Abilities({
    required this.force,
    required this.intelligence,
    required this.agility,
    required this.endurance,
    required this.velocity,
  });
  late final int force;
  late final int intelligence;
  late final int agility;
  late final int endurance;
  late final int velocity;

  Abilities.fromJson(Map<String, dynamic> json) {
    force = json['force'];
    intelligence = json['intelligence'];
    agility = json['agility'];
    endurance = json['endurance'];
    velocity = json['velocity'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['force'] = force;
    _data['intelligence'] = intelligence;
    _data['agility'] = agility;
    _data['endurance'] = endurance;
    _data['velocity'] = velocity;
    return _data;
  }
}
