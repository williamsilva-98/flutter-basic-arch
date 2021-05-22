import 'package:flutter/material.dart';
import 'app/modules/home/home_page.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: Modular.get<AppController>().changeThemeViewModel.theme,
      builder: (context, isDark, child) {
        print('============');
        print(isDark);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: isDark ? ThemeData.dark() : ThemeData.light(),
          initialRoute: '/',
        ).modular();
      },
    );
  }
}
