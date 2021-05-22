import 'package:flutter_arch/app/modules/home/home_module.dart';
import 'package:flutter_arch/app/services/local_storage/local_storage_service.dart';
import 'package:flutter_arch/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/viewmodel/change_theme_viewmodel.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => AppController(i())),
    Bind.singleton((i) => ChangeThemeViewModel(localStorage: i())),
    Bind.singleton((i) => LocalStorageService()),
  ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
      ];
}
