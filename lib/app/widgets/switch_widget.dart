import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../app_controller.dart';

class SwitchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: Modular.get<AppController>().changeThemeViewModel.isDark,
      onChanged: (v) {
        print(v);
        Modular.get<AppController>().changeThemeViewModel.switchTheme();
      },
    );
  }
}
