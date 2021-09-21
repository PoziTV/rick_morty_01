enum Type { EMPTY, TYPE, PURPLE, FLUFFY, TENTACLED, STICKY, INDIGO, INDECENT }

final typeValues = EnumValues({
  "": Type.EMPTY,
  "Организация": Type.FLUFFY,
  "Искусственная крошечная вселенная": Type.INDECENT,
  "Созданная реальность": Type.INDIGO,
  "Мир": Type.PURPLE,
  "Здание": Type.STICKY,
  "Планета": Type.TENTACLED,
  "Измерение": Type.TYPE
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}