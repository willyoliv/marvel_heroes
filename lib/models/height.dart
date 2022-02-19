class Height {
  Height({
    required this.value,
    required this.unity,
  });
  late final double value;
  late final String unity;

  Height.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    unity = json['unity'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['value'] = value;
    _data['unity'] = unity;
    return _data;
  }
}
