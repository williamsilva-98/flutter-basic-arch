abstract class ILocalStorage {
  Future<bool> getTheme(String key);
  Future<bool> saveTheme(String key, bool value);
}
