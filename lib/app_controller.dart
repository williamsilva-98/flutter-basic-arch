import 'package:flutter_arch/app/viewmodel/change_theme_viewmodel.dart';

class AppController {
  final ChangeThemeViewModel changeThemeViewModel;

  AppController(this.changeThemeViewModel) {
    changeThemeViewModel.init();
  }
}
