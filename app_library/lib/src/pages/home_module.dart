import 'package:app_library/src/pages/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
      ];
}
