import 'package:isar/isar.dart';
import 'package:isar_preferences/src/i_isar_preferences.dart';
import 'package:isar_preferences/src/isar_preference.dart';

class IsarPreferences implements IIsarPreferences {
  IsarPreferences._(this._isar);

  final Isar _isar;

  static Future<IsarPreferences> openIsarPreferences({
    required String directory,
  }) async {
    final isar = await Isar.open(
      [$IsarPreferenceSchema],
      directory: directory,
    );

    return IsarPreferences._(isar);
  }

  void close({bool deleteFromDisk = false}) {
    _isar.close(deleteFromDisk: deleteFromDisk);
  }

  @override
  Future<T> get<T>(String key) async {
    final value = await getOrNull<T>(key);
    if (value != null) {
      return value;
    }

    throw Exception('There is no value for key: $key');
  }

  @override
  Future<T> set<T>(String key, T value) {
    return _isar.writeTxn(() async {
      final preference = await _getOrCreatePreference(key);
      preference.setValue<T>(value);
      await _isar.$IsarPreferences.putByKey(preference);
      return value;
    });
  }

  @override
  Future<T> update<T>(
    String key,
    T Function(T value) update, {
    T Function()? ifAbsent,
  }) {
    return _isar.writeTxn(() async {
      final preference = await _getOrCreatePreference(key);
      var value = preference.getValue<T>();

      if (value != null) {
        value = update(value);
      } else if (ifAbsent != null) {
        value = ifAbsent();
      } else {
        throw Exception('There is no value for key: $key');
      }

      preference.setValue(value);
      await _isar.$IsarPreferences.putByKey(preference);
      return value;
    });
  }

  @override
  Future<void> remove<T>(String key) async {
    _isar.writeTxn(() async {
      final preference = await _getOrCreatePreference(key);
      preference.setValue<T>(null);
      await _isar.$IsarPreferences.putByKey(preference);
    });
  }

  @override
  T getSync<T>(String key) {
    final value = getOrNullSync<T>(key);
    if (value != null) {
      return value;
    }

    throw Exception('There is no value for key: $key');
  }

  @override
  T setSync<T>(String key, T value) {
    return _isar.writeTxnSync(() {
      final preference = _getOrCreatePreferenceSync(key);
      preference.setValue<T>(value);
      _isar.$IsarPreferences.putByKeySync(preference);
      return value;
    });
  }

  @override
  T updateSync<T>(
    String key,
    T Function(T value) update, {
    T Function()? ifAbsent,
  }) {
    return _isar.writeTxnSync(() {
      final preference = _getOrCreatePreferenceSync(key);
      var value = preference.getValue<T>();

      if (value != null) {
        value = update(value);
      } else if (ifAbsent != null) {
        value = ifAbsent();
      } else {
        throw Exception();
      }

      preference.setValue(value);
      _isar.$IsarPreferences.putByKeySync(preference);
      return value;
    });
  }

  @override
  void removeSync<T>(String key) {
    _isar.writeTxnSync(() {
      final preference = _getOrCreatePreferenceSync(key);
      preference.setValue<T>(null);
      _isar.$IsarPreferences.putByKeySync(preference);
    });
  }

  @override
  Future<T?> getOrNull<T>(String key) async {
    final preference = await _getOrCreatePreference(key);
    return preference.getValue<T>();
  }

  @override
  T? getOrNullSync<T>(String key) {
    final preference = _getOrCreatePreferenceSync(key);
    return preference.getValue<T>();
  }

  @override
  Stream<T?> watch<T>(String key) {
    return _isar.$IsarPreferences
        .where()
        .keyEqualTo(key)
        .watch()
        .map<T>((event) => event.isEmpty ? event.first.getValue<T>() : null)
        .distinct();
  }

  Future<$IsarPreference> _getOrCreatePreference(String key) async {
    final preference =
        await _isar.$IsarPreferences.where().keyEqualTo(key).findFirst();
    return preference ?? $IsarPreference()
      ..key = key;
  }

  $IsarPreference _getOrCreatePreferenceSync(String key) {
    final preference =
        _isar.$IsarPreferences.where().keyEqualTo(key).findFirstSync();
    return preference ?? $IsarPreference()
      ..key = key;
  }
}
