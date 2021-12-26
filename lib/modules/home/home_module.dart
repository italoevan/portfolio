import 'package:flutter_modular/flutter_modular.dart';
import 'package:italo_portfolio/modules/home/core/home_routes.dart';
import 'package:italo_portfolio/modules/home/presenter/index/index_page.dart';

import 'presenter/index/index_controller.dart';

class HomeModule extends Module {

  @override
  List<Bind<Object>> get binds => [Bind((i) => IndexControllerImpl())];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(HomeRoutes.home,
            child: (context, arguments) => IndexPage(
                  controller: Modular.get<IndexController>(),
                ))
      ];
}
