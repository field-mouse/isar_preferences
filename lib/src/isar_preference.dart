import 'dart:core';

import 'package:isar/isar.dart';

part 'isar_preference.g.dart';

@collection
class $IsarPreference {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String key;

  bool? boolValue;
  int? intValue;
  double? doubleValue;
  DateTime? dateTimeValue;
  String? stringValue;
  List<bool>? listBoolValue;
  List<int>? listIntValue;
  List<double>? listDoubleValue;
  List<DateTime>? listDateTimeValue;
  List<String>? listStringValue;

  dynamic getValue(Type type) {
    return switch (type) {
      const (bool) => boolValue,
      const (int) => intValue,
      const (double) => doubleValue,
      const (DateTime) => dateTimeValue,
      const (String) => stringValue,
      const (List<bool>) => listBoolValue,
      const (List<int>) => listIntValue,
      const (List<double>) => listDoubleValue,
      const (List<DateTime>) => listDateTimeValue,
      const (List<String>) => listStringValue,
      _ => throw Exception('Unsupported type: ${type.runtimeType}'),
    };
  }

  void setValue<T>(T? value) {
    switch (T) {
      case const (bool):
        boolValue = value as bool?;
        break;
      case const (int):
        intValue = value as int?;
        break;
      case const (double):
        doubleValue = value as double?;
        break;
      case const (DateTime):
        dateTimeValue = value as DateTime?;
        break;
      case const (String):
        stringValue = value as String?;
        break;
      case const (List<bool>):
        listBoolValue = value as List<bool>?;
        break;
      case const (List<int>):
        listIntValue = value as List<int>?;
        break;
      case const (List<double>):
        listDoubleValue = value as List<double>?;
        break;
      case const (List<DateTime>):
        listDateTimeValue = value as List<DateTime>?;
        break;
      case const (List<String>):
        listStringValue = value as List<String>?;
        break;
      default:
        throw Exception('Unsupported type: ${value.runtimeType}');
    }
  }
}
