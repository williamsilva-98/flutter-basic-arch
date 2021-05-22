import 'package:flutter_arch/app/services/local_storage/ilocal_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService implements ILocalStorage {
  @override
  Future<bool> getTheme(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool('isDark');
  }

  @override
  Future<bool> saveTheme(String key, bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setBool(key, value);
  }
}
