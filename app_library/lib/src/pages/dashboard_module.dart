import 'package:flutter_modular/flutter_modular.dart';

import 'dashboard_page.dart';

class DashBoardModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const DashBoardPage()),
      ];
}
