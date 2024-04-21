import 'package:isar/isar.dart';
import 'package:isar_preferences/src/i_isar_preferences.dart';
import 'package:isar_preferences/src/isar_preference.dart';

const _isarInstanceName = r'$isarPreferences';

class IsarPreferences implements IIsarPreferences {
  IsarPreferences._(this._isar);

  final Isar _isar;

  static IsarPreferences? _isarPreferencesInstance;

  static Future<IsarPreferences> open({
    required String directory,
    Map<String, dynamic>? defaultValues,
  }) async {
    final isar = await Isar.open(
      [$IsarPreferenceSchema],
      directory: directory,
      name: _isarInstanceName,
    );

    _isarPreferencesInstance = IsarPreferences._(isar);

    if (defaultValues != null) {
      _isarPreferencesInstance!._setDefaultValues(defaultValues);
    }

    return _isarPreferencesInstance!;
  }

  static IsarPreferences? getInstance() {
    return _isarPreferencesInstance;
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
      var value = preference.getValue(T);

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
    return _isar.writeTxn(() async {
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
      var value = preference.getValue(T);

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
    return _isar.writeTxnSync(() {
      final preference = _getOrCreatePreferenceSync(key);
      preference.setValue<T>(null);
      _isar.$IsarPreferences.putByKeySync(preference);
    });
  }

  @override
  Future<T?> getOrNull<T>(String key) async {
    final preference = await _getOrCreatePreference(key);
    return preference.getValue(T);
  }

  @override
  T? getOrNullSync<T>(String key) {
    final preference = _getOrCreatePreferenceSync(key);
    return preference.getValue(T);
  }

  @override
  Stream<T?> watch<T>(String key, {bool fireImmediately = false}) {
    return _isar.$IsarPreferences
        .where()
        .keyEqualTo(key)
        .watch(fireImmediately: fireImmediately)
        .map<T>((event) => event.isEmpty ? event.first.getValue(T) : null)
        .distinct();
  }

  Future<void> _setDefaultValues(Map<String, dynamic> values) async {
    await _isar.writeTxn(() async {
      for (var entry in values.entries) {
        final key = entry.key;
        final defaultValue = entry.value;

        final preference = await _getOrCreatePreference(key);
        final currentValue = preference.getValue(defaultValue.runtimeType);

        if (currentValue == null) {
          preference.setValue(defaultValue);
          await _isar.$IsarPreferences.putByKey(preference);
        }
      }
    });
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
