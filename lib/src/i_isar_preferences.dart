abstract interface class IIsarPreferences {
  Future<T> get<T>(String key);

  Future<T> set<T>(String key, T value);

  Future<T> update<T>(
    String key,
    T Function(T value) update, {
    T Function()? ifAbsent,
  });

  Future<void> remove<T>(String key);

  T getSync<T>(String key);

  T setSync<T>(String key, T value);

  T updateSync<T>(
    String key,
    T Function(T value) update, {
    T Function()? ifAbsent,
  });

  void removeSync<T>(String key);

  Future<T?> getOrNull<T>(String key);

  T? getOrNullSync<T>(String key);

  Stream<T?> watch<T>(String key);
}
