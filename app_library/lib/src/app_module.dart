import 'package:app_library/src/pages/home_module.dart';
import 'package:app_library/src/shared/stores/app_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => AppStore()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/home',
          module: HomeModule(),
        ),
        //ChildRoute(
        //  '/livros',
        //  child: (context, args) => const LivrosPage(),
        //),
      ];
}
