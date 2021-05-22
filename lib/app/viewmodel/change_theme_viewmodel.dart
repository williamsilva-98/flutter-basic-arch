import 'package:flutter/material.dart';
import 'package:flutter_arch/app/data/models/appconfig_model.dart';
import 'package:flutter_arch/app/services/local_storage/ilocal_storage.dart';

class ChangeThemeViewModel {
  final ILocalStorage localStorage;
  final config = AppConfigModel();

  bool get isDark => config.isDark.value;
  set isDark(bool value) => isDark = value;
  ValueNotifier<bool> get theme => config.isDark;

  ChangeThemeViewModel({@required this.localStorage});

  Future init() async {
    await localStorage.getTheme('isDark').then((value) {
      print(value);
      if (value != null) config.isDark.value = value;
    });
  }

  switchTheme() {
    config.isDark.value = !config.isDark.value;
    localStorage.saveTheme('isDark', config.isDark.value);
  }
}
