import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:isar_preferences/src/isar_preferences.dart';

void main() {
  late IsarPreferences isarPreferences;

  setUpAll(() async => await Isar.initializeIsarCore(download: true));

  setUp(() async {
    isarPreferences = await IsarPreferences.openIsarPreferences(
      directory: '.',
    );
  });

  tearDown(() {
    isarPreferences.close(deleteFromDisk: true);
  });

  const nonExistingKey = 'nonExistingKey';
  const key = 'key';
  const key2 = 'key2';

  test('value for non existing key is null', () async {
    final result = await isarPreferences.getOrNull<String>(nonExistingKey);

    expect(result, isNull);
  });

  test('set get remove async', () async {
    const stringValue = 'value';

    await isarPreferences.set<String>(key, stringValue);
    final value = await isarPreferences.get<String>(key);

    expect(value, stringValue);

    await isarPreferences.remove<String>(key);

    final newValue = await isarPreferences.getOrNull<String>(key);
    expect(newValue, isNull);
  });
}
