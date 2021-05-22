import 'package:flutter_arch/app/data/client/dio_client.dart';
import 'package:flutter_arch/app/data/repositories/picsum_repository/picsum_repository.dart';
import 'package:flutter_arch/app/data/sources/picsum_source/picsum_source.dart';
import 'package:flutter_arch/app/modules/home/home_controller.dart';
import 'package:flutter_arch/app/modules/home/home_page.dart';
import 'package:flutter_arch/app/viewmodel/picsum_viewmodel.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => HomeController(picsumViewModel: i())),
    Bind.singleton((i) => PicsumViewModel(picsumRepository: i())),
    Bind.singleton((i) => PicsumRepository(picsumSource: i())),
    Bind.singleton((i) => PicsumSource(httpClient: i())),
    Bind.singleton((i) => DioClient()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => HomePage())
  ];
}
