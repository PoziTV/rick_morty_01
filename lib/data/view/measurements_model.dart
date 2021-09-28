
enum Measurements { EMPTY, MEASUREMENTS, C_137, PURPLE, THE_137, FLUFFY, TENTACLED }

final measurementsValues = MeasurementsEnumValues({
  "C-137": Measurements.C_137,
  "": Measurements.EMPTY,
  "Измерение подмены": Measurements.FLUFFY,
  "Постапокалиптическое измерение": Measurements.MEASUREMENTS,
  "Вселенная Блендеров": Measurements.PURPLE,
  "Фруппиленд": Measurements.TENTACLED,
  "С-137": Measurements.THE_137
});

class MeasurementsEnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  MeasurementsEnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}