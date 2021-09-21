import 'package:rick_morty_01/data/network/models/enum_values.dart';

enum Measurements { EMPTY, MEASUREMENTS, C_137, PURPLE, THE_137, FLUFFY, TENTACLED }

final measurementsValues = EnumValues({
  "C-137": Measurements.C_137,
  "": Measurements.EMPTY,
  "Измерение подмены": Measurements.FLUFFY,
  "Постапокалиптическое измерение": Measurements.MEASUREMENTS,
  "Вселенная Блендеров": Measurements.PURPLE,
  "Фруппиленд": Measurements.TENTACLED,
  "С-137": Measurements.THE_137
});