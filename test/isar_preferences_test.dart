import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:isar_preferences/src/isar_preferences.dart';

void main() {
  late IsarPreferences isarPreferences;

  setUpAll(() async => await Isar.initializeIsarCore(download: true));

  setUp(() async {
    isarPreferences = await IsarPreferences.open(
      directory: '.',
    );
  });

  tearDown(() {
    isarPreferences.close(deleteFromDisk: true);
  });

  const nonExistingKey = 'nonExistingKey';
  const key = 'key';
  const key2 = 'key2';

  const stringValue = 'value';
  const boolValue = true;

  test('value for non existing key is null', () async {
    final result = await isarPreferences.getOrNull<String>(nonExistingKey);

    expect(result, isNull);
  });

  test('set get remove async', () async {
    await isarPreferences.set<String>(key, stringValue);
    final value = await isarPreferences.get<String>(key);

    expect(value, stringValue);

    await isarPreferences.remove<String>(key);

    final newValue = await isarPreferences.getOrNull<String>(key);
    expect(newValue, isNull);
  });

  test(
    'watch preference',
    () async {
      final result =
          await isarPreferences.watch<bool>(key, fireImmediately: true).first;
      expect(result, isNull);

      await isarPreferences.set<bool>(key, boolValue);

      final result2 =
          await isarPreferences.watch<bool>(key, fireImmediately: true).first;
      expect(result2, true);
    },
  );
}
