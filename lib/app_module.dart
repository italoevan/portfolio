
import 'package:flutter_modular/flutter_modular.dart';
import 'package:italo_portfolio/modules/home/home_module.dart';
import 'package:italo_portfolio/presenter/splash.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, argument) => Splash()),
        ModuleRoute('/index', module: HomeModule())
      ];
}
